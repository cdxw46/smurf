const_hex = '2e6e40681d53657c175816436d5862366f436230016347333f6314636d7a'


def swap_blocks(buf, block):
    data = bytearray(buf)
    idx = 0
    n = len(data)
    while idx + block - 1 < n:
        j = idx + block - 1
        data[idx], data[j] = data[j], data[idx]
        idx += block
    return bytes(data)


def apply_sequence(data, seq):
    out = bytes(data)
    for block in seq:
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


B = bytes.fromhex(const_hex)
stage1 = apply_sequence(B, range(1, len(B)))
stage2 = apply_sequence(stage1, range(len(B), 0, -1))
flag = txor(stage2, len(B))[:len(B)]
print(flag)
print(flag.decode('ascii', errors='replace'))
print(flag.hex())
EOF}
