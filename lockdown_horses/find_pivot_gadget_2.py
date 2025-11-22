from pwn import *

context.arch = 'amd64'
libc = ELF('/workspace/libc_versions/lib/x86_64-linux-gnu/libc-2.31.so')

patterns = [
    b'\x48\x89\xd4', # mov rsp, rdx
    b'\x48\x89\xc4', # mov rsp, rax
    b'\x48\x87\xe6', # xchg rsp, rsi
    b'\x48\x87\xe2', # xchg rsp, rdx
    b'\x48\x87\xc4'  # xchg rsp, rax
]

for p in patterns:
    matches = list(libc.search(p))
    for offset in matches:
        chunk = libc.read(offset, 16)
        if b'\xc3' in chunk:
             try:
                 print(f"Found {p.hex()} at {hex(offset)}: {disasm(chunk)}")
             except: pass
