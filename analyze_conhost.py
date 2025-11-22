import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

if b"conhost.exe" in data:
    print("Found conhost.exe")
else:
    print("Not found conhost.exe")
