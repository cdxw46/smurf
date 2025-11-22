import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

# Verificar donde aparece 'HH3wPH3oXL3'
target = b"HH3wPH3oXL3"
offsets = [m.start() for m in re.finditer(re.escape(target), data)]
print(f"Offsets for {target}: {offsets}")

# Verificar contexto
for off in offsets:
    start = max(0, off - 100)
    end = min(len(data), off + 100)
    print(f"Context: {data[start:end]}")
