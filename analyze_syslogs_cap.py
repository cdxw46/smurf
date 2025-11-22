import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

if b"System Logs" in data:
    print("Found System Logs")
else:
    print("Not found System Logs")
