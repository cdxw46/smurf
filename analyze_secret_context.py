import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

# Hex de "SecretPictures"
target_hex = b"SecretPictures"
offsets = [m.start() for m in re.finditer(re.escape(target_hex), data)]

for off in offsets:
    start = max(0, off - 50)
    end = min(len(data), off + 100)
    chunk = data[start:end]
    print(f"Offset {off}: {chunk}")
