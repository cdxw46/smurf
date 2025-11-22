import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

if b"SystemLogs." in data:
    print("Found SystemLogs.")
else:
    print("Not found SystemLogs.")
