import string

with open('output_xtraordinary.txt') as f:
    ct = bytes.fromhex(f.read().strip())

known_prefix = b'picoCTF{'
known_suffix = b'}'

prefix_key = bytes([c ^ p for c, p in zip(ct, known_prefix)])
print('prefix key:', prefix_key)

suffix_key = ct[-1] ^ known_suffix[0]
print('suffix key byte:', suffix_key)

allowed_chars = set(string.ascii_lowercase + string.digits + '_{}')

for L in range(1, 25):
    key_candidates = [set(range(256)) for _ in range(L)]
    valid = True
    for idx, c in enumerate(ct):
        pos = idx % L
        if idx < len(known_prefix):
            key_candidates[pos] &= {c ^ known_prefix[idx]}
        elif idx == len(ct) - 1:
            key_candidates[pos] &= {c ^ known_suffix[0]}
        else:
            key_candidates[pos] &= {c ^ ord(ch) for ch in allowed_chars}
        if not key_candidates[pos]:
            valid = False
            break
    if valid:
        print('Possible L=', L)
        print([sorted(list(k)) for k in key_candidates])
