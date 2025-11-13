ct = bytes.fromhex(open('output_xtraordinary.txt').read().strip())
flag_prefix = b'picoCTF{'
flag_suffix_char = ord('}')
K_eff = [None] * 21
for idx, ch in enumerate(flag_prefix):
    K_eff[idx] = ct[idx] ^ ch
K_eff[1] = ct[-1] ^ flag_suffix_char

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

patterns = []
for s in random_strs:
    patterns.append([s[i % len(s)] for i in range(21)])

solutions = []
for mask in range(1 << len(random_strs)):
    R = [0] * 21
    for bit, pat in enumerate(patterns):
        if (mask >> bit) & 1:
            for i in range(21):
                R[i] ^= pat[i]
    ok = True
    key_bytes = [None] * 21
    for idx in range(len(flag_prefix)):
        key_byte = K_eff[idx] ^ R[idx]
        if not (32 <= key_byte <= 126):
            ok = False
            break
        key_bytes[idx] = key_byte
    if ok:
        key_bytes[1] = K_eff[1] ^ R[1]
        solutions.append((mask, bytes([b if b is not None else 0 for b in key_bytes[:8]])))

print('solutions count', len(solutions))
for mask, kb in solutions[:20]:
    print(mask, kb)
