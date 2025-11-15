import random
seed = 42
bits = random.Random(seed)
words = random.Random(seed)
x = bits.getrandbits(67)
w0 = words.getrandbits(32)
w1 = words.getrandbits(32)
w2 = words.getrandbits(32)
print("x =", x)
print("hex x =", hex(x))
print("w0 =", hex(w0))
print("w1 =", hex(w1))
print("w2 =", hex(w2))
