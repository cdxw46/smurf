stage1_hex = '7a2e6e681d65167c6d436f36636214474363406358015833623f53306d17'
stage1 = bytes.fromhex(stage1_hex) + b'\x00\x00'
length = len(stage1)

def txor(buf, length):
    length_aligned = ((length & ~3) + 4)
    out = bytearray(length_aligned)
    out[:length] = buf[:length]
    cur = 0x0abcf00d
    limit = 0xdeadbeef
    step = 0x1fab4d
    while cur < limit:
        key_bytes = [(cur >> shift) & 0xff for shift in (24, 16, 8, 0)]
        for i in range(length_aligned):
            out[i] ^= key_bytes[i & 3]
        cur = (cur + step) & 0xffffffff
    return bytes(out)

flag = txor(stage1, length)[:30]
print(flag)
print(flag.decode('ascii', errors='replace'))
