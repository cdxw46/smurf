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

print("Scanning for URLs...")
urls = []
current_url = ""
for s in get_strings(data):
    if "http://" in s or "https://" in s:
        print(f"URL Candidate: {s}")

print("\nScanning for domains (FQDN)...")
# Regex simple para dominios
domain_pattern = re.compile(r'\b(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,}\b')

# Vamos a filtrar mucho para no ver basura
for s in get_strings(data):
    # Solo si parece un dominio y no una DLL o package de Go
    if "." in s and not s.endswith(".dll") and not s.startswith("go.") and "/" not in s:
        # Verificar con regex
        if domain_pattern.match(s):
             if "invalid" in s or "malware" in s or "hackthebox" in s or len(s) > 10:
                print(f"Domain Candidate: {s}")

# Buscar cerca de la clave de registro
print("\nSearching near registry key...")
# Buscamos la clave Run
target = b"CurrentVersion\\RUN"
offsets = [m.start() for m in re.finditer(re.escape(target), data, re.IGNORECASE)]
for off in offsets:
    start = max(0, off - 300)
    end = min(len(data), off + 300)
    chunk = data[start:end]
    print(f"Context {off}: {list(get_strings(chunk))}")
