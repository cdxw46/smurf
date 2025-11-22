import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

print("Searching for 11-char strings ending in .exe:")
strings = re.findall(b'[a-zA-Z0-9_]{7}\.exe', data)
for s in strings:
    print(s)
