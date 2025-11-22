import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

target = b"main.lurk"
offsets = [m.start() for m in re.finditer(re.escape(target), data)]
for off in offsets:
    start = max(0, off - 2000)
    end = min(len(data), off + 2000)
    chunk = data[start:end]
    
    # Buscar strings que contengan "exe"
    exe_strings = re.findall(b'[a-zA-Z0-9_.-]+exe', chunk)
    print(f"EXE strings near lurk: {exe_strings}")
    
    # Buscar cualquier string de 11 chars
    eleven_chars = re.findall(b'[a-zA-Z0-9]{11}', chunk)
    print(f"11 chars near lurk: {eleven_chars}")
