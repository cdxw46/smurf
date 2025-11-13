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
patterns = [[s[i % len(s)] for i in range(L)] for s in random_strs]

prefix = b'picoCTF{'
last_char = ord('}')
second_last_char = ord('~')

allowed_chars = string.ascii_lowercase + string.digits + '_~'

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
        kb = ct[idx] ^ ch ^ R[idx]
        if not (32 <= kb <= 126):
            valid = False
            break
        key[idx] = kb
    if not valid:
        continue
    kb1 = ct[22] ^ last_char ^ R[1]
    if not (32 <= kb1 <= 126):
        continue
    if (ct[21] ^ second_last_char ^ R[0]) != key[0]:
        continue
    key[1] = kb1

    domains = []
    for idx in range(8, 21):
        options = [ch for ch in allowed_chars if 32 <= (ct[idx] ^ ord(ch) ^ R[idx]) <= 126]
        if not options:
            valid = False
            break
        domains.append((idx, options))
    if valid:
        results.append((mask, domains))

print('valid masks:', len(results))
for mask, domains in results[:3]:
    print('mask', mask)
    for idx, opts in domains:
        print(idx, ''.join(opts))
    print()
