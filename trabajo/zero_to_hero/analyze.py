from pwn import *

context.binary = elf = ELF("./zero_to_hero", checksec=False)
libc = ELF("./libc.so.6", checksec=False)

def start():
    return process(["./ld-2.29.so", "./zero_to_hero"], env={"LD_PRELOAD": "./libc.so.6"})

p = start()
print(p.libs())
p.recvuntil(b"hero?\n")
p.sendline(b"y")
for _ in range(2):
    p.recvline()
leak_line = p.recvline().strip()
print(leak_line)
leak = int(leak_line.split(b": ")[1], 16)
libc_base = p.libs()[libc.path]
print(f"libc base: {hex(libc_base)}")
print(f"leak - base: {hex(leak - libc_base)}")
p.close()
