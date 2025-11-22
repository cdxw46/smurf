import re

def is_interesting(s):
    # Filtrar cadenas de runtime de Go y basura común
    if len(s) < 4: return False
    if s.startswith("go/") or s.startswith("runtime/") or s.startswith("net/") or s.startswith("os/") or s.startswith("sync/") or s.startswith("type.."): return False
    if "github.com" in s: return False
    if re.match(r'^[A-Za-z0-9+/=]{20,}$', s): return False # Base64 probable o hash largo
    return True

try:
    with open("all_strings.txt", "r") as f:
        strings = f.read().splitlines()
except FileNotFoundError:
    print("all_strings.txt not found")
    exit(1)

candidates = []
paths = []
others = []

for s in strings:
    if is_interesting(s):
        if "\\" in s:
            paths.append(s)
        else:
            others.append(s)

print("--- Cadenas con backslash (posibles rutas) ---")
# Filtrar un poco mas las rutas para quitar ruido de regex o formatos
for p in paths:
    if len(p) < 100: # Evitar lineas muy largas
        print(p)

print("\n--- Cadenas cercanas a SecretPictures ---")
# Buscar strings alrededor de SecretPictures en la lista original para ver contexto
try:
    idx = -1
    for i, s in enumerate(strings):
        if "SecretPictures.exe" in s:
            idx = i
            break
    
    if idx != -1:
        start = max(0, idx - 20)
        end = min(len(strings), idx + 20)
        for i in range(start, end):
            print(f"{i}: {strings[i]}")
except Exception as e:
    print(e)
