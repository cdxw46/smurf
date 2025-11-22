from pwn import *

context.arch = 'amd64'
libc = ELF('/workspace/libc_versions/lib/x86_64-linux-gnu/libc-2.31.so')

print("Searching for pop rsp; ret (5c c3)")
matches = list(libc.search(b'\x5c\xc3'))
for offset in matches:
    print(f"Found pop rsp at {hex(offset)}")
    break # One is enough
