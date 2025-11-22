import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

target = b"gscheck.exe"
offsets = [m.start() for m in re.finditer(re.escape(target), data)]
print(f"gscheck.exe found at: {offsets}")

for off in offsets:
    start = max(0, off - 100)
    end = min(len(data), off + 100)
    print(f"Context: {data[start:end]}")
