import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

if b"SecretPicts" in data:
    print("Found SecretPicts")
else:
    print("Not found SecretPicts")
