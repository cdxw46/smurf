from z3 import BitVec, BitVecVal, Solver, Or, If, sat
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

solver = Solver()

flag_vars = [BitVec(f'f_{i}', 8) for i in range(len(ct))]
key_vars = [BitVec(f'k_{i}', 8) for i in range(L)]
mask_bits = [BitVec(f'm_{i}', 1) for i in range(len(random_strs))]

for m in mask_bits:
    solver.add(Or(m == 0, m == 1))

prefix = b'picoCTF{'
for i, ch in enumerate(prefix):
    solver.add(flag_vars[i] == ch)
solver.add(flag_vars[-1] == ord('}'))

allowed_chars = ''.join(ch for ch in string.printable if ch not in '\t\n\r\x0b\x0c')
for idx in range(8, len(ct)-1):
    solver.add(Or(*[flag_vars[idx] == ord(ch) for ch in allowed_chars]))

R = []
for i in range(L):
    expr = BitVecVal(0, 8)
    for bit, pat in enumerate(patterns):
        expr = expr ^ If(mask_bits[bit] == 1, BitVecVal(pat[i], 8), BitVecVal(0, 8))
    R.append(expr)

for idx in range(len(ct)):
    key_idx = idx % L
    solver.add(ct[idx] == (flag_vars[idx] ^ key_vars[key_idx] ^ R[key_idx]))

if solver.check() != sat:
    raise SystemExit('No solution found')

model = solver.model()
flag_bytes = [model.eval(flag_vars[i]).as_long() for i in range(len(ct))]
flag = bytes(flag_bytes)
print(flag.decode('ascii'))
