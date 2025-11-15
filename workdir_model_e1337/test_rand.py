import random
from randcrack import RandCrack

r = random.Random(123)
rc = RandCrack()
needed = 624
submitted = 0
while submitted < needed:
    val = r.getrandbits(64)
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
print(Expected
