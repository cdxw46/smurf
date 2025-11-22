from pwn import *

context.arch = 'amd64'
libc = ELF('/workspace/libc_versions/lib/x86_64-linux-gnu/libc-2.31.so')

print("Searching for push rsp; pop rbp (54 5d)")
matches = list(libc.search(b'\x54\x5d'))
for offset in matches:
    chunk = libc.read(offset, 16)
    if b'\xc3' in chunk:
         try:
             print(f"Found push rsp; pop rbp at {hex(offset)}: {disasm(chunk)}")
         except: pass
