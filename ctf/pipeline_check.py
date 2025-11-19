flag = bytes.fromhex('7069636f4354467b245f3544335f4131314441375f646434616437643310')
length = len(flag)


def swap_blocks(buf, block):
    data = bytearray(buf)
    idx = 0
    n = len(data)
    while idx + block - 1 < n:
        j = idx + block - 1
        data[idx], data[j] = data[j], data[idx]
        idx += block
    return bytes(data)


def scramble(buf, direction):
    out = bytes(buf)
    n = len(out)
    blocks = range(1, n + 1) if direction > 0 else range(n - 1, 0, -1)
    for block in blocks:
        out = swap_blocks(out, block)
    return out


def txor(buf, length):
    aligned = ((length & ~3) + 4)
    out = bytearray(aligned)
    out[:length] = buf[:length]
    cur = 0x0abcf00d
    limit = 0xdeadbeef
    step = 0x1fab4d
    while cur < limit:
        key_bytes = [(cur >> shift) & 0xff for shift in (24, 16, 8, 0)]
        for i in range(aligned):
            out[i] ^= key_bytes[i & 3]
        cur = (cur + step) & 0xffffffff
    return bytes(out)

const_hex = '7a2e6e681d65167c6d436f36636214474363406358015833623f53306d17'
const_bytes = bytes.fromhex(const_hex)
B_hex = '2e6e40681d53657c175816436d5862366f436230016347333f6314636d7a'
B = bytes.fromhex(B_hex)

stage1 = txor(flag, length)
stage2 = scramble(stage1[:length], 1)
print('stage2 == const?', stage2 == const_bytes)
B_user = scramble(stage2, -1)
print('B_user == B?', B_user == B)
