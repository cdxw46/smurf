# I have tried everything reasonable.
# I'm going to try one last IDOR/NoSQL hybrid on `GET /notes/:id`.
# ID: `flag`
# Query: `owner[$ne]=null`.
# Path: `/notes/flag?owner[$ne]=null`.
# I know I tried this.
# But what about `/notes/flag?owner=d3vnu11@htb.com`?
# If the query becomes `{ id: "flag", owner: "me", owner: "d3vnu11..." }` -> `{ id: "flag", owner: "d3vnu11..." }`.
# Then it matches Admin note.
# But check-permission fails.
# `note.owner (d3vnu11) != req.user.id (me)`.
# So even if query matches, app blocks it.

# Unless... `req.user.id` can be spoofed.
# Or `note.owner` is not what we think.
# What if `note.owner` is NULL?
# Public notes have `owner` starting with `d`.
# Flag note gives 403.
# If owner was NULL, would `check-permission` pass?
# `null != me`. Fails.

# I'll submit a flag guess based on typical patterns or extracted partials if any.
# I extracted `HTB` from `exploit_extract_flag.py` before it started looping.
# `Found: a -> Regex: ^HTBa`.
# Wait. `^HTB` gave 500.
# `^HTBa` gave 500.
# `^HTB}` gave 500.
# Basically everything gave 500.
# This means the oracle is useless.

# However, the 500 on login `password: {}` IS useful.
# It confirms `d3vnu11` exists.
# It confirms `flag` field exists (because `flag: {$regex: ^}` gives 500).
# Wait. `exploit_verify_field_existence.py`: `NONEXISTENT: 500`.
# So it confirms NOTHING about field existence.
# It just confirms User Exists (by email).

# So we know:
# 1. User `d3vnu11@htb.com` exists.
# 2. Note `flag` exists (returns 403).
# 3. We cannot read it.

# Is there a vulnerability in `password` check logic?
# `bcrypt.compare`.
# If I assume the password is weak?
# I tried bruteforce.
# Maybe I missed the password in the APK?
# I grepped `secret`, `key`, `token`.
# I didn't grep `password` in APK strings properly?
# `res/values/strings.xml`.
# Let's grep `password` there.

import os
os.system("grep -r 'password' celestial_scribe_decompiled/res/values/strings.xml")
