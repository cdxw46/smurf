import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

target = b"Software\\Microsoft\\Windows\\CurrentVersion\\RUN"
offsets = [m.start() for m in re.finditer(re.escape(target), data, re.IGNORECASE)]

for off in offsets:
    start = max(0, off - 100)
    end = min(len(data), off + 200)
    chunk = data[start:end]
    print(f"Hex around offset {off}:")
    print(chunk.hex())
    print(f"ASCII: {chunk}")
