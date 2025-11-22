from pwn import *

context.arch = 'amd64'
libc = ELF('/workspace/libc_versions/lib/x86_64-linux-gnu/libc-2.31.so')

# Search for 'pop r8' (41 58)
matches = list(libc.search(b'\x41\x58'))
print(f"Found {len(matches)} occurrences of 'pop r8'")

for offset in matches:
    # Check next bytes
    # We want a ret (c3) reasonably soon
    chunk = libc.read(offset, 16)
    # Disassemble
    try:
        print(f"Offset {hex(offset)}: {disasm(chunk)}")
    except:
        pass
