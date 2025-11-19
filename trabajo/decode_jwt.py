import base64, json

token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJ0ZXN0dXNlciIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzYzNTczNTE0LCJleHAiOjE3NjM1NzcxMTR9.oUKVa8--IfW2XnddLKwa3whLPX_iCerQvIKBLHHEEKg"
header_b64, payload_b64, sig = token.split(".")
for label, part in (("header", header_b64), ("payload", payload_b64)):
    padded = part + "=" * (-len(part) % 4)
    decoded = base64.urlsafe_b64decode(padded)
    print(label, json.loads(decoded))
print("sig", sig)
