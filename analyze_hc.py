import re

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

if b"HealthCheck" in data:
    print("Found HealthCheck")
else:
    print("Not found HealthCheck")
