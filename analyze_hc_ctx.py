import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

target = b"HealthCheck"
offsets = [m.start() for m in re.finditer(re.escape(target), data)]
print(f"HealthCheck found at: {offsets}")

for off in offsets:
    start = max(0, off - 200)
    end = min(len(data), off + 200)
    print(f"Context: {data[start:end]}")
