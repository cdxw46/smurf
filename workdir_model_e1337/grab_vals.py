import requests
import re
url = "https://be70246ccddc1f86e6fc7ea2d2f311bd.ctf.hacker101.com/unlock"
pattern = re.compile(r"Expected (\d+)")
s = requests.Session()
vals = []
for _ in range(10):
    r = s.post(url, data={"code": "0"})
    m = pattern.search(r.text)
    if not m:
        raise SystemExit(r.text)
    vals.append(int(m.group(1)))
print(vals)
