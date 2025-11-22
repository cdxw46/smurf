import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

target = b"secretheist"
offsets = [m.start() for m in re.finditer(re.escape(target), data, re.IGNORECASE)]

if offsets:
    print(f"Found {target} at {offsets}")
else:
    print(f"Not found: {target}")
    
target = b"secret_heist"
offsets = [m.start() for m in re.finditer(re.escape(target), data, re.IGNORECASE)]
if offsets:
    print(f"Found {target} at {offsets}")
else:
    print(f"Not found: {target}")

# Busquemos cualquier cosa de 11 caracteres cerca de "Run"
print("\nSearching for 11 chars near RUN...")
run_offsets = [m.start() for m in re.finditer(b"RUN", data, re.IGNORECASE)]
for off in run_offsets:
    start = max(0, off - 100)
    end = min(len(data), off + 100)
    chunk = data[start:end]
    # Busquemos palabras de 11 caracteres
    strings = re.findall(b'[a-zA-Z0-9_]{11}', chunk)
    if strings:
        print(f"Near {off}: {strings}")
