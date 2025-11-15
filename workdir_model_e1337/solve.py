import re
import requests
from randcrack import RandCrack

URL = "https://be70246ccddc1f86e6fc7ea2d2f311bd.ctf.hacker101.com/unlock"
pattern = re.compile(r"Expected (\d{20})")

session = requests.Session()
rc = RandCrack()
needed = 624
submitted = 0

def fetch_output():
    resp = session.post(URL, data={"code": "0"})
    resp.raise_for_status()
    m = pattern.search(resp.text)
    if not m:
        raise ValueError(f"Unexpected response: {resp.text!r}")
    return int(m.group(1))

while submitted < needed:
    val = fetch_output()
    low = val & 0xffffffff
    high = val >> 32
    rc.submit(low)
    submitted += 1
    if submitted >= needed:
        break
    rc.submit(high)
    submitted += 1

low = rc.predict_getrandbits(32)
high = rc.predict_getrandbits(32)
predicted = (high << 32) | low
code_str = f"{predicted:020d}"
print("Predicted code:", code_str)

resp = session.post(URL, data={"code": code_str})
print("Server response:")
print(resp.text)
