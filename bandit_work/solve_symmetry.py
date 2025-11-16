import requests

BASE_URL = "https://aes.cryptohack.org/symmetry"
SESSION = requests.Session()


def encrypt(plaintext: bytes, iv: bytes) -> bytes:
    url = f"{BASE_URL}/encrypt/{plaintext.hex()}/{iv.hex()}/"
    resp = SESSION.get(url, timeout=5)
    resp.raise_for_status()
    return bytes.fromhex(resp.json()["ciphertext"])


def encrypt_flag():
    resp = SESSION.get(f"{BASE_URL}/encrypt_flag/", timeout=5)
    resp.raise_for_status()
    data = resp.json()["ciphertext"]
    iv = bytes.fromhex(data[:32])
    ciphertext = bytes.fromhex(data[32:])
    return iv, ciphertext


def xor_bytes(a: bytes, b: bytes) -> bytes:
    return bytes(x ^ y for x, y in zip(a, b))


def main():
    iv, ciphertext = encrypt_flag()
    keystream = encrypt(b"\x00" * len(ciphertext), iv)
    flag = xor_bytes(ciphertext, keystream).decode()
    print(flag)


if __name__ == "__main__":
    main()
