import re
from pathlib import Path
from collections import defaultdict

cipher = Path('snippet_no_flag.txt').read_text()
cipher_words = re.findall(r'[A-Za-z]+', cipher.lower())
word_list = Path('words.txt').read_text(encoding='utf-8', errors='ignore').split()
word_list = [w.lower() for w in word_list if w.isalpha()]

pattern_cache = {}

def word_pattern(word):
    if word in pattern_cache:
        return pattern_cache[word]
    mapping = {}
    pattern = []
    next_code = 0
    for ch in word:
        if ch not in mapping:
            mapping[ch] = str(next_code)
            next_code += 1
        pattern.append(mapping[ch])
    pat = '.'.join(pattern)
    pattern_cache[word] = pat
    return pat

pattern_dict = defaultdict(list)
for word in word_list:
    pattern_dict[word_pattern(word)].append(word)

candidates = []
for word in cipher_words:
    pat = word_pattern(word)
    words = [w for w in pattern_dict.get(pat, []) if len(w) == len(word)]
    candidates.append((word, words))

# sort by fewest candidates
candidates.sort(key=lambda item: len(item[1]) if item[1] else float('inf'))

cipher_to_plain = {}
plain_to_cipher = {}
solution = None


def search(index):
    global solution
    if index == len(candidates):
        solution = cipher_to_plain.copy()
        return True
    cipher_word, possible_words = candidates[index]
    if not possible_words:
        return False
    for plain_word in possible_words:
        # check mapping consistency
        ok = True
        local_map = []
        for c, p in zip(cipher_word, plain_word):
            mapped = cipher_to_plain.get(c)
            if mapped is not None and mapped != p:
                ok = False
                break
            if p in plain_to_cipher and plain_to_cipher[p] != c:
                ok = False
                break
            if mapped is None:
                cipher_to_plain[c] = p
                plain_to_cipher[p] = c
                local_map.append((c, p))
        if ok:
            if search(index + 1):
                return True
        for c, p in local_map:
            cipher_to_plain.pop(c, None)
            plain_to_cipher.pop(p, None)
    return False

if search(0):
    mapping = cipher_to_plain
    result = []
    for ch in cipher.lower():
        if ch.isalpha():
            mapped = mapping.get(ch)
            if mapped:
                result.append(mapped)
            else:
                result.append('?')
        else:
            result.append(ch)
    print(''.join(result))
else:
    print('No solution found')
