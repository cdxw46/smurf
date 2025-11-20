import math
import random
import re
from collections import Counter
from pathlib import Path

ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
ALPHABET_SIZE = 26
TOTAL_GRAMS = ALPHABET_SIZE ** 4
ETAOIN = 'ETAOINSHRDLCUMWFGYPBVKJXQZ'
WORD_PATTERN = re.compile(r'[A-Za-z]+')
WORD_WEIGHT = 25.0

word_list = set(Path('words.txt').read_text(encoding='utf-8', errors='ignore').split())


def gram_index(a, b, c, d):
    return ((a * ALPHABET_SIZE + b) * ALPHABET_SIZE + c) * ALPHABET_SIZE + d

ref_text = Path('ref.txt').read_text(encoding='utf-8', errors='ignore')
letters = [ord(c) - 65 for c in ref_text.upper() if 'A' <= c <= 'Z']
counts = Counter()
for i in range(len(letters) - 3):
    counts[gram_index(letters[i], letters[i+1], letters[i+2], letters[i+3])] += 1
total = sum(counts.values())
floor = math.log(0.5 / total)
scores = [floor] * TOTAL_GRAMS
for idx, cnt in counts.items():
    scores[idx] = math.log((cnt + 0.5) / total)

cipher_text = Path('snippet.txt').read_text(encoding='utf-8', errors='ignore')
cipher_letters = [ch for ch in cipher_text.upper() if 'A' <= ch <= 'Z']
cipher_indices = [ord(ch) - 65 for ch in cipher_letters]
rng = random.Random()

letter_counts = Counter(ch for ch in cipher_text.upper() if 'A' <= ch <= 'Z')
ordered_cipher_letters = [pair[0] for pair in letter_counts.most_common()]
missing_cipher = [ch for ch in ALPHABET if ch not in letter_counts]
ordered_cipher = ordered_cipher_letters + missing_cipher


def frequency_key():
    key = [None] * 26
    used_plain = set()
    for cipher_letter, plain_letter in zip(ordered_cipher, ETAOIN):
        idx = ord(cipher_letter) - 65
        key[idx] = ord(plain_letter) - 65
        used_plain.add(ord(plain_letter) - 65)
    remaining_plain = [i for i in range(26) if i not in used_plain]
    rem_iter = iter(remaining_plain)
    for idx in range(26):
        if key[idx] is None:
            key[idx] = next(rem_iter)
    return key

base_key = frequency_key()


def tetragram_score(key):
    letters = [key[idx] for idx in cipher_indices]
    total_score = 0.0
    for i in range(len(letters) - 3):
        total_score += scores[gram_index(letters[i], letters[i+1], letters[i+2], letters[i+3])]
    return total_score


def decrypt_with_key(key):
    mapping = {ALPHABET[i]: ALPHABET[key[i]] for i in range(26)}
    out = []
    for ch in cipher_text:
        up = ch.upper()
        if 'A' <= up <= 'Z':
            rep = mapping[up]
            if ch.islower():
                out.append(rep.lower())
            else:
                out.append(rep)
        else:
            out.append(ch)
    return ''.join(out)


def word_score(text):
    score = 0.0
    for word in WORD_PATTERN.findall(text.lower()):
        if word in word_list:
            score += len(word)
    return score


def combined_score(key):
    plain = decrypt_with_key(key)
    return tetragram_score(key) + WORD_WEIGHT * word_score(plain), plain


def random_key(from_base=False):
    if from_base:
        key = base_key[:]
        for _ in range(20):
            i, j = rng.sample(range(26), 2)
            key[i], key[j] = key[j], key[i]
        return key
    key = list(range(26))
    rng.shuffle(key)
    return key


def hillclimb(key):
    current_score, current_plain = combined_score(key)
    improved = True
    while improved:
        improved = False
        for i in range(26):
            for j in range(i + 1, 26):
                key[i], key[j] = key[j], key[i]
                cand_score, cand_plain = combined_score(key)
                if cand_score > current_score:
                    current_score = cand_score
                    current_plain = cand_plain
                    improved = True
                else:
                    key[i], key[j] = key[j], key[i]
    return key, current_score, current_plain

best_score = float('-inf')
best_plain = None
best_key = None
restarts = 400
for restart in range(restarts):
    use_base = restart < 80
    key = random_key(from_base=use_base)
    current_score, current_plain = combined_score(key)
    temp = 5.0
    while temp > 0:
        improved = False
        for _ in range(1500):
            i, j = rng.sample(range(26), 2)
            key[i], key[j] = key[j], key[i]
            cand_score, cand_plain = combined_score(key)
            delta = cand_score - current_score
            if delta > 0 or math.exp(delta / temp) > rng.random():
                current_score = cand_score
                current_plain = cand_plain
                improved = True
                if current_score > best_score:
                    best_score = current_score
                    best_plain = current_plain
                    best_key = key[:]
            else:
                key[i], key[j] = key[j], key[i]
        if not improved:
            break
        temp -= 0.5

if best_key is not None:
    best_key, best_score, best_plain = hillclimb(best_key)
    print(best_score)
    print(best_plain)
else:
    print('No solution')
