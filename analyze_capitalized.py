import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

targets = ["Persistence", "persistence", "MyMalware", "Update", "WindowsUpdate", "SystemUpdate"]
for t in targets:
    if t.encode() in data:
        print(f"Found {t}")
    else:
        print(f"Not found {t}")

# Busquemos cualquier string de 11 caracteres que empiece con mayúscula y no tenga símbolos raros
print("\nScanning for Capitalized 11-char strings:")
strings = re.findall(b'[A-Z][a-zA-Z0-9]{10}', data)
unique_strings = sorted(list(set([s.decode() for s in strings])))
for s in unique_strings:
    # Filtros
    if "Standard" in s or "Pacific" in s or "Mountain" in s or "Central" in s: continue
    if "Request" in s or "Response" in s or "Socket" in s: continue
    if "Address" in s or "Element" in s or "String" in s: continue
    print(s)
