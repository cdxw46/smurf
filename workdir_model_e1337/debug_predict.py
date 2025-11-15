import re
import requests
from randcrack import RandCrack

URL = "https://be70246ccddc1f86e6fc7ea2d2f311bd.ctf.hacker101.com/unlock"
pattern = re.compile(r"Expected (\d{20})")

session = requests.Session()
rc = RandCrack()
needed = 624
submitted = 0

def fetch(expected_only=False):
    resp = session.post(URL, data={"code": "0" if not expected_only else "dummy"})
    resp.raise_for_status()
    m = pattern.search(resp.text)
    if not m:
        raise ValueError(f"Unexpected response: {resp.text!r}")
    return int(m.group(1)), resp.text

while submitted < needed:
    val, _ = fetch()
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
print("Predicted next code:", f"{predicted:020d}")

actual_val, response_text = fetch()
print("Actual next code:", f"{actual_val:020d}")

low_actual = actual_val & 0xffffffff
high_actual = actual_val >> 32
print("Match low?:", low == low_actual)
print("Match high?:", high == high_actual)
print("Response text:", response_text)
