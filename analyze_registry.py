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

# Buscar la clave del registro
target = b"Software\\Microsoft\\Windows\\CurrentVersion\\RUN"
offsets = [m.start() for m in re.finditer(re.escape(target), data)]

print(f"Found {len(offsets)} occurrences of Registry Key")

for off in offsets:
    print(f"\n--- Context around offset {off} ---")
    start = max(0, off - 2000) # Mucho contexto
    end = min(len(data), off + 2000)
    chunk = data[start:end]
    
    strings = list(get_strings(chunk))
    # Imprimir strings de forma legible
    for s in strings:
        print(s)
