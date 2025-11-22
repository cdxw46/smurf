import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

target = b"System logs"
if target in data:
    print(f"Found {target}")
else:
    print(f"Not found {target}")

# Buscar cualquier cosa con "logs" y longitud 11.
match = re.findall(b'[a-zA-Z0-9 ._-]*logs[a-zA-Z0-9 ._-]*', data)
for m in match:
    if len(m) == 11:
        print(m)
