from pwn import *

context.log_level = "debug"

def start():
    return process(["./ld-2.29.so", "./zero_to_hero"], env={"LD_PRELOAD": "./libc.so.6"})

p = start()
print(p.recvuntil(b"hero?\n"))
p.sendline(b"y")
print(p.recvuntil(b"Exit\n"))
print(p.recv(1024))
