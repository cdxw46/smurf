from pwn import *

context.arch = 'amd64'
libc = ELF('/workspace/libc_versions/lib/x86_64-linux-gnu/libc-2.31.so')

# Search for 'pop r8; ...; ret'
# 41 58 (pop r8)
# ...
# c3 (ret)
# Limit distance to 10 bytes

matches = list(libc.search(b'\x41\x58'))
for offset in matches:
    chunk = libc.read(offset, 10)
    if b'\xc3' in chunk:
        print(f"Found potential gadget at {hex(offset)}: {disasm(chunk)}")
