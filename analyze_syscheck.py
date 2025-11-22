import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

if b"SystemCheck" in data:
    print("Found SystemCheck")
else:
    print("Not found SystemCheck")
