import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

if b"My Pictures" in data:
    print("Found My Pictures")
else:
    print("Not found My Pictures")
