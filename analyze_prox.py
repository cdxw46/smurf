import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

# Buscar host y version cerca
p1 = b"host"
p2 = b"version"

# Buscar índices
idxs1 = [m.start() for m in re.finditer(p1, data)]
idxs2 = [m.start() for m in re.finditer(p2, data)]

for i1 in idxs1:
    for i2 in idxs2:
        if abs(i1 - i2) < 100:
            print(f"Found host and version near each other at {i1}, {i2}")
            start = min(i1, i2) - 50
            end = max(i1, i2) + 50
            print(f"Context: {data[start:end]}")
