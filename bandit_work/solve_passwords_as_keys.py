import hashlib
from Crypto.Cipher import AES

CIPHERTEXT = bytes.fromhex("c92b7734070205bdf6c0087a751466ec13ae15e6f1bcdd3f3a535ec0f4bbae66")


def main():
    with open("words.txt", "r", encoding="utf-8") as f:
        for word in f:
            word = word.strip()
            if not word:
                continue
            key = hashlib.md5(word.encode()).digest()
            cipher = AES.new(key, AES.MODE_ECB)
            plaintext = cipher.decrypt(CIPHERTEXT)
            if b"crypto{" in plaintext:
                print(word)
                print(plaintext.decode())
                return


if __name__ == "__main__":
    main()
