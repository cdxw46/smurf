from pwn import *

context.arch = 'amd64'
libc = ELF('/workspace/libc_versions/lib/x86_64-linux-gnu/libc-2.31.so')

# mov r9, reg
# 4c 89 c1 (mov r9, rax)
# 4c 89 d1 (mov r9, rdx)
# 4c 89 e1 (mov r9, rsp) - unlikely
# 4c 89 f1 (mov r9, rsi)
# 4c 89 f9 (mov r9, rdi)

print("Searching for mov r9, ...")
patterns = [
    b'\x4c\x89\xc1', # mov r9, rax
    b'\x4c\x89\xd1', # mov r9, rdx
    b'\x4c\x89\xf1', # mov r9, rsi
    b'\x4c\x89\xf9'  # mov r9, rdi
]

for p in patterns:
    matches = list(libc.search(p))
    for offset in matches:
        chunk = libc.read(offset, 16)
        if b'\xc3' in chunk:
            try:
                print(f"Found pattern {p.hex()} at {hex(offset)}: {disasm(chunk)}")
            except: pass
