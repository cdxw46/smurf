import re
from pathlib import Path
path = Path('oauth_app/smali/com/hacker101/oauth/WebAppInterface.smali')
nums = []
inside = False
for line in path.read_text().splitlines():
    line = line.strip()
    if line.startswith('.array-data'):
        inside = True
        continue
    if inside:
        if line == '.end array-data':
            break
        if not line or line.startswith('#'):
            continue
        token = line.split()[0]
        nums.append(int(token, 0))
for i, val in enumerate(nums):
    val = val + 0x3e800
    val -= i
    val -= (i + 1) * 0xad
    val %= 0x100
    nums[i] = val
mapping = {0: '+', 1: '-', 2: '<', 3: '>', 4: '[', 5: ']', 6: '.'}
extra = sorted(set(nums) - set(mapping))
if extra:
    raise SystemExit(f'Unexpected opcode(s): {extra}')
code = ''.join(mapping[n] for n in nums)
tape = [0] * 0x10000
ptr = 0
ip = 0
output = []
stack = []
brackets = {}
for idx, ch in enumerate(code):
    if ch == '[':
        stack.append(idx)
    elif ch == ']':
        if not stack:
            raise SystemExit(f'Unmatched ] at {idx}')
        j = stack.pop()
        brackets[j] = idx
        brackets[idx] = j
if stack:
    raise SystemExit(f'Unmatched [ at {stack}')
code_len = len(code)
while ip < code_len:
    ch = code[ip]
    if ch == '+':
        tape[ptr] = (tape[ptr] + 1) & 0xFF
    elif ch == '-':
        tape[ptr] = (tape[ptr] - 1) & 0xFF
    elif ch == '>':
        ptr = (ptr + 1) % len(tape)
    elif ch == '<':
        ptr = (ptr - 1) % len(tape)
    elif ch == '.':
        output.append(chr(tape[ptr]))
    elif ch == '[':
        if tape[ptr] == 0:
            ip = brackets[ip]
    elif ch == ']':
        if tape[ptr] != 0:
            ip = brackets[ip]
    ip += 1
flag_path = ''.join(output) + '.html'
print(flag_path)
