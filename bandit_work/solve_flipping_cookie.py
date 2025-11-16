import requests

BASE_URL = "https://aes.cryptohack.org/flipping_cookie"
SESSION = requests.Session()
BLOCK_SIZE = 16

ORIG_BLOCK = b"admin=False;expi"
TARGET_BLOCK = b"admin=True;expir"


def get_cookie():
    resp = SESSION.get(f"{BASE_URL}/get_cookie/", timeout=5)
    resp.raise_for_status()
    cookie_hex = resp.json()["cookie"]
    iv = bytes.fromhex(cookie_hex[:2 * BLOCK_SIZE])
    ciphertext = bytes.fromhex(cookie_hex[2 * BLOCK_SIZE:])
    return iv, ciphertext


def check_admin(ciphertext: bytes, iv: bytes):
    url = f"{BASE_URL}/check_admin/{ciphertext.hex()}/{iv.hex()}/"
    resp = SESSION.get(url, timeout=5)
    resp.raise_for_status()
    return resp.json()


def flip_iv(iv: bytes) -> bytes:
    delta = bytes(o ^ t for o, t in zip(ORIG_BLOCK, TARGET_BLOCK))
    return bytes(b ^ d for b, d in zip(iv, delta))


def main():
    iv, ciphertext = get_cookie()
    new_iv = flip_iv(iv)
    result = check_admin(ciphertext, new_iv)
    print(result["flag"])


if __name__ == "__main__":
    main()
