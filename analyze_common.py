import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

patterns = ["update", "service", "host", "system", "microsoft", "windows"]
print("Scanning for common malware persistence names (11 chars):")
match = re.findall(b'[a-zA-Z0-9]{11}', data)
candidates = []
for m in match:
    s = m.decode()
    lower_s = s.lower()
    for p in patterns:
        if p in lower_s:
            candidates.append(s)

print(sorted(list(set(candidates))))
