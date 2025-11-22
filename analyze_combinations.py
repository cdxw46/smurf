import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

target = b"SecPictures"
offsets = [m.start() for m in re.finditer(re.escape(target), data, re.IGNORECASE)]
if offsets:
    print(f"Found {target}")
else:
    print(f"Not found {target}")

# Buscar combinaciones de "Secret" y "Pictures" truncadas
print("\nSearching for combinations:")
patterns = [b"Secret.{4}", b".{4}Pictures"]
for p in patterns:
    match = re.findall(p, data)
    for m in match:
        if len(m) == 11:
            print(m)
