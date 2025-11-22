import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

# Generar variantes de "SecretPictures" de 11 caracteres
base = "SecretPictures"
variants = []
variants.append("SecretPics_") # 11
variants.append("Secret_Pics") # 11
variants.append("secr_pics")
variants.append("SystemLogs_")

print(f"Searching for variants...")
for v in variants:
    if v.encode() in data:
        print(f"Found {v}")

# Busquemos cualquier cadena que termine en "Pictures" y tenga 11 caracteres.
print("\nEnds with Pictures (11 chars):")
match = re.findall(b'.{3}Pictures', data)
for m in match:
    if len(m) == 11:
        print(m)

# Busquemos cualquier cadena que empiece con "Secret" y tenga 11 caracteres.
print("\nStarts with Secret (11 chars):")
match = re.findall(b'Secret.{5}', data)
for m in match:
    if len(m) == 11:
        print(m)
