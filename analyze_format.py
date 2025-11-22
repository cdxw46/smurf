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

target = b"main.formatData"
offsets = [m.start() for m in re.finditer(re.escape(target), data)]

for off in offsets:
    start = max(0, off - 500)
    end = min(len(data), off + 500)
    chunk = data[start:end]
    print(f"Strings near formatData ({off}):")
    strings = list(get_strings(chunk))
    # Filtrar candidatos de 4 y 7 letras
    for s in strings:
        if (len(s) == 4 or len(s) == 7) and s.islower():
            print(s)
