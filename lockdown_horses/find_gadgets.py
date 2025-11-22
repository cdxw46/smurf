from pwn import *

context.arch = 'amd64'
libc = ELF('/workspace/libc_versions/lib/x86_64-linux-gnu/libc-2.31.so')
rop = ROP(libc)

print("Read offset:", hex(libc.symbols['read']))
print("Open offset:", hex(libc.symbols['open']))
print("Mmap offset:", hex(libc.symbols['mmap']))

try:
    print("pop rdi:", hex(rop.find_gadget(['pop rdi', 'ret'])[0]))
except: print("pop rdi not found")

try:
    print("pop rsi:", hex(rop.find_gadget(['pop rsi', 'ret'])[0]))
except: print("pop rsi not found")

try:
    print("pop rdx:", hex(rop.find_gadget(['pop rdx', 'ret'])[0]))
except: 
    # Try pop rdx; pop r12; ret
    try:
        print("pop rdx_r12:", hex(rop.find_gadget(['pop rdx', 'pop r12', 'ret'])[0]))
    except: print("pop rdx not found")

try:
    print("pop rcx:", hex(rop.find_gadget(['pop rcx', 'ret'])[0]))
except: 
    # Try pop rcx; pop rbx; ret
    try:
         print("pop rcx_rbx:", hex(rop.find_gadget(['pop rcx', 'pop rbx', 'ret'])[0]))
    except: print("pop rcx not found")

try:
    print("pop r8:", hex(rop.find_gadget(['pop r8', 'ret'])[0]))
except: 
    # Try pop r8; pop r9; ret or similar
    # ROP object might not find complex ones automatically if strict
    # We can search manually?
    print("pop r8 not found via standard")
    
    # search for bytes '41 58 c3' (pop r8; ret)
    offset = libc.search(b'\x41\x58\xc3').__next__()
    print("pop r8 (manual):", hex(offset))

