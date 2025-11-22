import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

targets = ["SecretImage", "SecretImages", "SecretPhoto", "SecretPhotos", "SecImage", "SecImages", "HiddenImage", "HiddenPhoto"]
for t in targets:
    if t.encode() in data:
        print(f"Found {t}")
    else:
        print(f"Not found {t}")

# Buscar cualquier cosa que empiece por Secret y tenga 11 caracteres
match = re.findall(b'Secret.{5}', data)
for m in match:
    print(m)
