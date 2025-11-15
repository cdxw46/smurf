import random
seed = 12345
bits = random.Random(seed)
words = random.Random(seed)
for k in [1, 2, 7, 13, 31, 33, 63, 64, 65, 67]:
    x = bits.getrandbits(k)
    w_needed = (k + 31) // 32
    ws = [words.getrandbits(32) for _ in range(w_needed)]
    print(f"k={k} x={x} hex={x:#x} words={[hex(w) for w in ws]}")
