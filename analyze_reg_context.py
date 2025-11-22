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

# Offset interesante: 3848130
offset = 3848130
start = max(0, offset - 2000)
end = min(len(data), offset + 2000)
chunk = data[start:end]

print(f"--- Strings around {offset} ---")
# Vamos a imprimir todos los strings encontrados en este chunk
for s in get_strings(chunk):
    print(s)
