LENGTH = 30
ALIGNED = ((LENGTH & ~3) + 4)

F_HEX = '2e6e40681d53657c7a5816436d5862366f436230016347333f6314636d17'
stage2 = bytes.fromhex(F_HEX)


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

flag = txor(stage2 + b'\x00\x00', ALIGNED)
print(flag[:LENGTH])
print(flag[:LENGTH].decode('ascii', errors='replace'))
print(flag[:LENGTH].hex())
EOF}
