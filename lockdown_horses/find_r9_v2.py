from pwn import *

context.arch = 'amd64'
libc = ELF('/workspace/libc_versions/lib/x86_64-linux-gnu/libc-2.31.so')

print("Searching for pop r9")
matches = list(libc.search(b'\x41\x59'))
for offset in matches:
    chunk = libc.read(offset, 16)
    if b'\xc3' in chunk:
         try:
             print(f"Found pop r9 at {hex(offset)}: {disasm(chunk)}")
         except: pass
