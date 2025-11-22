from pwn import *

context.arch = 'amd64'
libc = ELF('/workspace/libc_versions/lib/x86_64-linux-gnu/libc-2.31.so')

# This is 0ubuntu9 (checked earlier read=0x110fa0)
# Wait, I downloaded 9.18 later and overwrote libc-2.31.so?
# Yes, I ran wget to the same location?
# No, I ran wget to /workspace/libc_versions/...
# I extracted 9.18 last.
# So /workspace/libc_versions/lib/... is 9.18.
# I need to re-extract 9.

pass
