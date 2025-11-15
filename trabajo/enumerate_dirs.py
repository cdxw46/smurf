import os
import urllib.request, urllib.parse, ssl
ssl._create_default_https_context = ssl._create_unverified_context
base = "https://64914da4faaa468326dbfd132d9ba09b.ctf.hacker101.com/"
dirs = ["pending", "queue", "moderation", "comments", "comment", "awaiting", "approval", "submissions", "pending_comments", "comments_pending", "pendingcomments", "incoming", "review", "toapprove"]
start = int(os.environ.get("DIR_START", 0))
count = int(os.environ.get("DIR_COUNT", len(dirs)))
max_id = int(os.environ.get("MAX_ID", 50))
subset = dirs[start:start+count]
for directory in subset:
    for i in range(1, max_id + 1):
        page = f"{directory}/{i}"
        url = base + "?" + urllib.parse.urlencode({"page": page})
        try:
            with urllib.request.urlopen(url, timeout=3) as resp:
                text = resp.read().decode("utf-8", "replace")
        except Exception:
            continue
        if "Warning" not in text:
            print(page, len(text))
