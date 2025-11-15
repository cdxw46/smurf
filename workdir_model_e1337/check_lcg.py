from math import gcd
vals = [11071367714379312555, 7664812379075919942, 16605393842500264110, 11568242695539475182, 11428612272961013326, 14098115273331580728, 7603256009164522518, 11336014926137998583, 11138323743991130021, 7750604635201101607]
mod = 2**64
found = False
for i in range(len(vals)-2):
    x0, x1, x2 = vals[i:i+3]
    diff1 = (x1 - x0) % mod
    diff2 = (x2 - x1) % mod
    if gcd(diff1, mod) != 1:
        continue
    inv = pow(diff1, -1, mod)
    a = (diff2 * inv) % mod
    c = (x1 - a * x0) % mod
    ok = True
    y = x1
    for v in vals[i+1:]:
        y = (a * y + c) % mod
        if y != v:
            ok = False
            break
    if ok:
        print("LCG found", i, hex(a), hex(c))
        found = True
        break
if not found:
    print("No LCG match")
