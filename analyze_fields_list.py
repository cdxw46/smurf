import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

candidates4 = ["user", "host", "name", "data", "type", "uuid", "guid", "id", "key"]
candidates7 = ["version", "content", "machine", "address", "payload", "message", "details", "os_name"]

print("Checking candidates:")
for c in candidates4:
    if c.encode() in data:
        print(f"Found 4: {c}")

for c in candidates7:
    if c.encode() in data:
        print(f"Found 7: {c}")
