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

# Buscar strings en el segmento de datos (al final del archivo suele haber datos)
# O cerca de donde se usan.
# Vamos a buscar "host" y "version" y ver su entorno.

p1 = b"host"
p2 = b"version"

offsets1 = [m.start() for m in re.finditer(p1, data)]
offsets2 = [m.start() for m in re.finditer(p2, data)]

print("Offsets for 'host':", offsets1)
print("Offsets for 'version':", offsets2)

# Buscar si hay algún offset de host cerca de algún offset de version
for o1 in offsets1:
    for o2 in offsets2:
        dist = abs(o1 - o2)
        if dist < 200:
            print(f"Proximity match at {o1}, {o2} (dist {dist})")
            start = min(o1, o2) - 50
            end = max(o1, o2) + 50
            print(f"Context: {data[start:end]}")
