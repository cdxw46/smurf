const_hex = '7a2e6e681d65167c6d436f36636214474363406358015833623f53306d17'
const_bytes = bytes.fromhex(const_hex)
length = len(const_bytes)

def block_swap(buf, block):
    data = bytearray(buf)
    n = len(data)
    i = 0
    while i <= n - block:
        j = i + block - 1
        data[i], data[j] = data[j], data[i]
        i += block
    return bytes(data)

def apply_sequence(data, seq):
    out = bytes(data)
    for block in seq:
        out = block_swap(out, block)
    return out

seq_minus = list(range(length - 1, 0, -1))
result = apply_sequence(const_bytes, seq_minus)
print(result.hex())
