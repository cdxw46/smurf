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

print("11 chars candidates:")
candidates = []
for s in get_strings(data):
    if len(s) == 11 and re.match(r'^[a-zA-Z0-9]+$', s): # Solo alfanumerico
        candidates.append(s)

# Filtrar
whitelist = []
for c in candidates:
    if c.startswith("Type") or c.startswith("Value") or c.startswith("Write") or c.startswith("Read"): continue
    if c.startswith("Get") or c.startswith("Set") or c.startswith("Add") or c.startswith("New"): continue
    if c.endswith("Time") or c.endswith("Type") or c.endswith("Info") or c.endswith("Data"): continue
    if c in ["Certificate", "Description", "CipherSuite", "DefaultMask", "CloseHandle", "ExitProcess", "VirtualFree"]: continue
    whitelist.append(c)

print(sorted(list(set(whitelist))))
