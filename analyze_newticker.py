import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

if b"NewTicker" in data:
    print("Found NewTicker")
else:
    print("Not found NewTicker")
