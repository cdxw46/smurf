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

# Buscamos cerca de "main.lurk"
offsets = [m.start() for m in re.finditer(b"main.lurk", data)]
for off in offsets:
    # Contexto amplio
    start = max(0, off - 2000)
    end = min(len(data), off + 2000)
    chunk = data[start:end]
    strings = list(get_strings(chunk))
    print(f"Strings near main.lurk ({off}):")
    # Filtrar solo cadenas cortas que puedan ser el nombre
    for s in strings:
        if 8 <= len(s) <= 15:
             print(s)
