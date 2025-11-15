words = [0x29645f8b, 0x5f811cb9, 0x1fcff454]
k = 67
shift = len(words)*32 - k
little = 0
for i, w in enumerate(words):
    little |= w << (32*i)
print("little combine:", hex(little))
print("little >> shift:", hex(little >> shift))

big = 0
for w in words:
    big = (big << 32) | w
print("big combine:", hex(big))
print("big >> shift:", hex(big >> shift))

rev = 0
for w in reversed(words):
    rev = (rev << 32) | w
print("rev combine:", hex(rev))
print("rev >> shift:", hex(rev >> shift))
