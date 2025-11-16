import requests

BASE_URL = "https://aes.cryptohack.org/ecb_oracle"
BLOCK_SIZE = 16
FIXED_PREFIX = b"B" * BLOCK_SIZE
SESSION = requests.Session()


def encrypt(plaintext: bytes) -> bytes:
    hex_pt = plaintext.hex()
    url = f"{BASE_URL}/encrypt/{hex_pt}/"
    resp = SESSION.get(url, timeout=5)
    resp.raise_for_status()
    data = resp.json()
    return bytes.fromhex(data["ciphertext"])


def recover_flag() -> str:
    recovered = bytearray()
    block_offset = len(FIXED_PREFIX) // BLOCK_SIZE

    while True:
        pad_len = BLOCK_SIZE - 1 - (len(recovered) % BLOCK_SIZE)
        pad = b"A" * pad_len
        prefix = FIXED_PREFIX + pad
        base_cipher = encrypt(prefix)

        block_idx = block_offset + (len(recovered) // BLOCK_SIZE)
        start = block_idx * BLOCK_SIZE
        end = start + BLOCK_SIZE
        target_block = base_cipher[start:end]

        found = False
        for guess in range(256):
            attempt = prefix + recovered + bytes([guess])
            attempt_cipher = encrypt(attempt)
            block = attempt_cipher[start:end]
            if block == target_block:
                recovered.append(guess)
                found = True
                break

        if not found:
            break
        if recovered.endswith(b"}"):
            return recovered.decode()

    raise RuntimeError("Failed to recover flag")


def main():
    flag = recover_flag()
    print(flag)


if __name__ == "__main__":
    main()
