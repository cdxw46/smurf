import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

if b"secpictures" in data:
    print("Found secpictures")
else:
    print("Not found secpictures")

# Buscar strings que contengan "pic"
match = re.findall(b'[a-z0-9_.-]*pic[a-z0-9_.-]*', data)
for m in match:
    if len(m) == 11:
        print(m)
