import sys
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

# Buscar "SecretPictures.exe"
target = b"SecretPictures.exe"
offsets = [m.start() for m in re.finditer(re.escape(target), data)]

print(f"Found {len(offsets)} occurrences of {target.decode()}")

for off in offsets:
    print(f"\n--- Context around offset {off} ---")
    start = max(0, off - 500)
    end = min(len(data), off + 500)
    chunk = data[start:end]
    
    # Mostrar strings en este chunk
    print(list(get_strings(chunk)))

# Buscar patrones de rutas comunes
print("\n--- Searching for common path patterns ---")
patterns = [b"AppData", b"Roaming", b"Local", b"Temp", b"Startup", b"Microsoft", b"Windows"]
for p in patterns:
    p_offsets = [m.start() for m in re.finditer(re.escape(p), data)]
    if p_offsets:
        print(f"Found {p.decode()} at {p_offsets[:5]}...")
        for off in p_offsets[:2]: # Solo mostrar contexto de los primeros 2
            start = max(0, off - 100)
            end = min(len(data), off + 100)
            chunk = data[start:end]
            print(f"Context: {list(get_strings(chunk))}")
