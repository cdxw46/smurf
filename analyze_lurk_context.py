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

print("Searching for main.lurk context...")
target = b"main.lurk"
offsets = [m.start() for m in re.finditer(re.escape(target), data)]
for off in offsets:
    start = max(0, off - 1000)
    end = min(len(data), off + 1000)
    chunk = data[start:end]
    print(f"Strings near {off}: {list(get_strings(chunk))}")
