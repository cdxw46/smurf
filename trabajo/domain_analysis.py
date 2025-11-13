import string

ct = bytes.fromhex(open('output_xtraordinary.txt').read().strip())

random_strs = [
    b'my encryption method',
    b'is absolutely impenetrable',
    b'and you will never',
    b'ever',
    b'ever',
    b'ever',
    b'ever',
    b'ever',
    b'ever',
    b'break it'
]

L = 21
patterns = []
for s in random_strs:
    patterns.append([s[i % len(s)] for i in range(L)])

prefix = b'picoCTF{'
last_char = ord('}')
second_last_char = ord('~')

allowed = ''.join(ch for ch in string.printable if ch not in '\t\n\r\x0b\x0c')

results = []

for mask in range(1 << len(random_strs)):
    R = [0] * L
    for bit, pat in enumerate(patterns):
        if (mask >> bit) & 1:
            for i in range(L):
                R[i] ^= pat[i]
    key = [None] * L
    valid = True
    for idx, ch in enumerate(prefix):
        key[idx] = ct[idx] ^ ch ^ R[idx]
        if not (32 <= key[idx] <= 126):
            valid = False
            break
    if not valid:
        continue
    key[1] = ct[22] ^ last_char ^ R[1]
    if not (32 <= key[1] <= 126):
        continue
    if (ct[21] ^ second_last_char ^ R[0]) != key[0]:
        continue

    domain_sizes = []
    for idx in range(8, 21):
        count = 0
        for ch in allowed:
            kb = ct[idx] ^ ord(ch) ^ R[idx % L]
            if 32 <= kb <= 126:
                count += 1
        if count == 0:
            valid = False
            break
        domain_sizes.append(count)
    if not valid:
        continue
    results.append((mask, domain_sizes, sum(domain_sizes)))

results.sort(key=lambda x: x[2])
print('found', len(results), 'masks')
for mask, sizes, total in results[:20]:
    print(mask, sizes, 'total', total)
