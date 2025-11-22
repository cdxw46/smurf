import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

target = b"HH3wPH3oXL3"
if target in data:
    print(f"Found {target}")
    
# Buscar cualquier string de 11 chars que empiece por H
strings = re.findall(b'H[a-zA-Z0-9]{10}', data)
for s in strings:
    print(s)
