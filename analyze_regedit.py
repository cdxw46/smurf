import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

if b"regedit.exe" in data:
    print("Found regedit.exe")
else:
    print("Not found regedit.exe")
