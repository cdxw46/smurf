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


def read_mem(p, addr, size):
    with open(f"/proc/{p.pid}/mem", "rb", 0) as mem:
        mem.seek(addr)
        return mem.read(size)

if __name__ == "__main__":
    p = start()
    init(p)

    # allocate 2 chunks to ensure tcache struct exists
    for length in (0x20, 0x20):
        p.sendline(b"1")
        p.recvuntil(b"description?\n")
        p.sendline(str(length).encode())
        p.recvuntil(b"description: ")
        p.send(b"A"*length)
        p.recvuntil(PROMPT)

    ptr = u64(read_mem(p, ARR, 8))
    heap_base = ptr & ~0xfff
    log.info(f"first chunk pointer: {hex(ptr)} -> heap base approx {hex(heap_base)}")

    data = read_mem(p, heap_base, 0x400)
    print(hexdump(data))
    p.close()
