from pwn import *

context.arch = 'amd64'
libc = ELF('/workspace/libc_versions/lib/x86_64-linux-gnu/libc-2.31.so')

print("Searching for mov rbp, rsp (48 89 e5)")
matches = list(libc.search(b'\x48\x89\xe5'))
for offset in matches:
    chunk = libc.read(offset, 16)
    if b'\xc3' in chunk:
         try:
             print(f"Found mov rbp, rsp at {hex(offset)}: {disasm(chunk)}")
         except: pass
