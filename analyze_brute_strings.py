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

offset = 3084015
start = max(0, offset - 5000)
end = min(len(data), offset + 5000)
chunk = data[start:end]

print(f"Strings near RUN (offset {offset}):")
strings = list(get_strings(chunk))
for s in strings:
    if len(s) == 11:
        print(s)
