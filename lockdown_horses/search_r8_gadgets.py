from pwn import *

context.arch = 'amd64'
libc = ELF('/workspace/libc_versions/lib/x86_64-linux-gnu/libc-2.31.so')

# Search for 'mov r8, ...' followed by ret within 20 bytes
# mov r8, reg is usually 4c 89 ... or 49 89 ...
# pop r8 is 41 58

print("Searching for 'pop r8' with ret within 20 bytes:")
matches = list(libc.search(b'\x41\x58'))
for offset in matches:
    chunk = libc.read(offset, 20)
    if b'\xc3' in chunk:
        print(f"Found pop r8 at {hex(offset)}: {disasm(chunk)}")

print("\nSearching for 'mov r8, rax' (49 89 c0) or similar:")
# mov r8, rax: 49 89 c0
matches = list(libc.search(b'\x49\x89\xc0'))
for offset in matches:
    chunk = libc.read(offset, 20)
    if b'\xc3' in chunk:
        print(f"Found mov r8, rax at {hex(offset)}: {disasm(chunk)}")

print("\nSearching for 'mov r8, rdx' (49 89 d0):")
matches = list(libc.search(b'\x49\x89\xd0'))
for offset in matches:
    chunk = libc.read(offset, 20)
    if b'\xc3' in chunk:
        print(f"Found mov r8, rdx at {hex(offset)}: {disasm(chunk)}")

