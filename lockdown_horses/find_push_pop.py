from pwn import *

context.arch = 'amd64'
libc = ELF('/workspace/libc_versions/lib/x86_64-linux-gnu/libc-2.31.so')

print("Searching for push rax; pop rsi (50 5e)")
matches = list(libc.search(b'\x50\x5e'))
for offset in matches:
    chunk = libc.read(offset, 16)
    if b'\xc3' in chunk:
         try:
             print(f"Found push rax; pop rsi at {hex(offset)}: {disasm(chunk)}")
         except: pass
