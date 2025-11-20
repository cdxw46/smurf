import os

def swap_blocks(buf, block):
    data = bytearray(buf)
    n = len(data)
    idx = 0
    while idx + block - 1 < n:
        j = idx + block - 1
        data[idx], data[j] = data[j], data[idx]
        idx += block
    return bytes(data)

def scramble(buf, direction):
    out = bytes(buf)
    n = len(out)
    if direction > 0:
        blocks = range(1, n + 1)
    else:
        blocks = range(n - 1, 0, -1)
    for block in blocks:
        out = swap_blocks(out, block)
    return out

for n in [6,8,10,12]:
    data = bytes(range(n))
    res = scramble(scramble(data, 1), -1)
    print(n, res == data)
