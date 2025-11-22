import re

def get_strings(data, min_len=4):
    result = ""
    for b in data:
        if 32 <= b <= 126:
            result += chr(b)
        else:
            if len(result) >= min_len:
                yield result
            result = ""
    if len(result) >= min_len:
        yield result

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

print("Fuzzy search for 'SecretPictures' variants (len 11):")
for s in get_strings(data):
    if len(s) == 11:
        # Verificar si comparte caracteres con SecretPictures
        common = 0
        for char in "SecretPictures":
            if char in s:
                common += 1
        if common > 8:
            print(s)
