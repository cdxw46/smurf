import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

if b"UpdateCheck" in data:
    print("Found UpdateCheck")
else:
    print("Not found UpdateCheck")
