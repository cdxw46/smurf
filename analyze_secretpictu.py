import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

if b"SecretPictu" in data:
    print("Found SecretPictu")
else:
    print("Not found SecretPictu")
