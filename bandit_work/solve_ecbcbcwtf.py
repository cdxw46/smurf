import requests

BASE_URL = "https://aes.cryptohack.org/ecbcbcwtf"
SESSION = requests.Session()
BLOCK_SIZE = 16

def xor_bytes(a: bytes, b: bytes) -> bytes:
    return bytes(x ^ y for x, y in zip(a, b))


def encrypt_flag() -> bytes:
    resp = SESSION.get(f"{BASE_URL}/encrypt_flag/", timeout=5)
    resp.raise_for_status()
    data = resp.json()
    return bytes.fromhex(data["ciphertext"])


def decrypt_block(block: bytes) -> bytes:
    resp = SESSION.get(f"{BASE_URL}/decrypt/{block.hex()}/", timeout=5)
    resp.raise_for_status()
    data = resp.json()
    return bytes.fromhex(data["plaintext"])


def pkcs7_unpad(data: bytes) -> bytes:
    if not data:
        return data
    pad = data[-1]
    if pad < 1 or pad > BLOCK_SIZE:
        return data
    if data[-pad:] != bytes([pad]) * pad:
        return data
    return data[:-pad]


def recover_flag() -> str:
    ciphertext = encrypt_flag()
    iv = ciphertext[:BLOCK_SIZE]
    blocks = [ciphertext[i:i + BLOCK_SIZE] for i in range(BLOCK_SIZE, len(ciphertext), BLOCK_SIZE)]

    prev = iv
    plaintext = b""
    for block in blocks:
        decrypted = decrypt_block(block)
        plaintext_block = xor_bytes(decrypted, prev)
        plaintext += plaintext_block
        prev = block

    plaintext = pkcs7_unpad(plaintext)
    return plaintext.decode()


def main():
    flag = recover_flag()
    print(flag)


if __name__ == "__main__":
    main()
