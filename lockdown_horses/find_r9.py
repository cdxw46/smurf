from pwn import *

context.arch = 'amd64'
libc = ELF('/workspace/libc_versions/lib/x86_64-linux-gnu/libc-2.31.so')

print("pop r9:", hex(rop.find_gadget(['pop r9', 'ret'])[0]) if rop.find_gadget(['pop r9', 'ret']) else "None")

if not rop.find_gadget(['pop r9', 'ret']):
    matches = list(libc.search(b'\x41\x59\xc3')) # pop r9; ret
    print(f"Manual search pop r9; ret: {matches}")
    
    # Try pop r9; pop rsomething; ret
    # 41 59 ...
    matches = list(libc.search(b'\x41\x59'))
    for offset in matches:
        chunk = libc.read(offset, 10)
        if b'\xc3' in chunk:
             print(f"Found pop r9 at {hex(offset)}: {disasm(chunk)}")
