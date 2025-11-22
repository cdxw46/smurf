import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

if b"message" in data:
    print("Found message")
else:
    print("Not found message")
    
# Buscar strings que contengan "msg"
match = re.findall(b'[a-z]*msg[a-z]*', data)
for m in match:
    if len(m) == 7:
        print(m)
