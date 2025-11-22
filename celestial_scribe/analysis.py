# Analysis of Shadowing Failure
# 1. I created a note with id="flag". Success.
# 2. I tried to read GET /notes/flag. Result: 403.
# 3. If the query was `db.notes.findOne({ id: "flag", owner: "me" })`, it would match MY note and return 200.
# 4. Since it returns 403 (Access Denied), it means it found a note (otherwise 404), but ownership check failed.
# 5. This implies the query is likely `db.notes.findOne({ id: "flag" })` (ignoring owner in query).
# 6. AND THEN, the application code checks: `if (note.owner != user.id) return 403`.
# 7. Since `findOne` returns the first match, and the Admin's flag note was created first (or indexed first), it returns Admin's note.
# 8. This is a VULNERABILITY pattern: "Insecure Retrieval of Resource" followed by "Application Layer Access Control".

# EXPLOIT STRATEGY:
# We need to make `findOne` return OUR note instead of Admin's note.
# We can't delete Admin's note.
# Can we inject into `findOne` to exclude Admin's note?
# GET /notes/flag?param...
# If `req.params.id` is used directly as string, we can't inject.
# But wait, previously I tried `/notes?id=flag&owner[$ne]=null` and it returned 2 notes (public ones), but not the flag.
# This was the LIST endpoint. The LIST endpoint probably adds `{ owner: me }` (or public logic).

# Let's focus on GET /notes/:id
# If the code is:
# Note.findOne({ id: req.params.id }, (err, note) => {
#    if (note.owner != req.user.id) return 403;
#    return note;
# })

# We verified that query params do NOT override path params.
# So `req.params.id` is "flag".
# We can't change the query `{ id: "flag" }`.

# BUT wait.
# If I can create a note with id="flag", and the query finds the Admin's note...
# Does the List endpoint show my "flag" note?
# In previous output: `Listing notes...` showed ONLY 2 notes.
# It did NOT show my shadow "flag" note.
# Why?
# List endpoint query: `find({ owner: me })`.
# If I created it, it SHOULD be there.
# "Create Shadow: 200 ... noteId: flag"
# But listing didn't show it.
# Maybe `id` must be unique and `create` failed silently or updated the existing one?
# I tested upsert before: `Note updated successfully`.
# So when I POST /notes with id="flag", it tries to UPDATE the existing flag note?
# And since I don't own it, it should fail?
# But it returned 200 "Note created successfully" (or updated).
# Wait, let's check the output of shadow creation again.
# "Create Shadow: 200 ... message: Note created successfully"
# If it says "created", it implies insertion.
# If "updated", it implies modification.
# In `exploit_shadow_flag.py` output:
# "Create Shadow: 200 ... message: Note created successfully"
# AND `Read Shadow: 200 ... title: shadow`.
# WAIT. In `exploit_shadow_flag.py`, reading /notes/flag returned 200 and my content!
# "Read Shadow: 200 ... content: shadow"
# SO SHADOWING WORKS SOMETIMES?

# Let's compare `exploit_shadow_flag.py` (Working) vs `exploit_param_override.py` (Failed).
# In `exploit_shadow_flag.py`:
# I registered a user. Created note id="flag". Read /notes/flag. -> 200 OK.
# In `exploit_param_override.py` (and `exploit_delete_shadow_flag.py`):
# I registered a user. Created note id="flag". Read /notes/flag. -> 403 Forbidden. (In delete script: Read Shadow: 403)

# Why the difference?
# Maybe the "flag" note doesn't exist for ALL users?
# Or maybe it depends on which DB shard/replica is hit? (Unlikely)
# Or maybe... creating it with a SPECIFIC title/content?
# No.

# Let's re-read carefully.
# `exploit_shadow_flag.py` output:
# "Read Shadow: 200 ... {"id":"flag","title":"shadow"..."
# `exploit_delete_shadow_flag.py` output:
# "Creating shadow flag..."
# "Read Shadow: 403"

# This is extremely inconsistent.
# If `findOne` is used without sort, the order is natural order (insertion order).
# Admin note is older. My note is newer.
# `findOne` should return Admin note.
# So why did `exploit_shadow_flag.py` return MY note?
# Maybe I deleted the shadow note in that script? No, I commented out the delete.
# Maybe the `id` in `exploit_shadow_flag.py` wasn't actually "flag"?
# Code: `json={"id": "flag", ...}`.
# Output: `{"success":true,"note":{"id":"flag",...}}`

# Hypothesis: The "flag" note does NOT exist initially in the DB for new instances?
# No, previous enumerations showed 403 for "flag" immediately.
# And `exploit_delete_shadow_flag.py` showed 403 AFTER creating shadow.

# Let's try to reproduce the SUCCESS case of `exploit_shadow_flag.py`.
# If I can read MY shadow note, I am bypassing the Admin note blocking me.
# But I want the ADMIN note content.
# If I shadow it, I see MINE. That's useless for the flag.
# UNLESS the flag is in the "Welcome" or "Security" notes which might be template notes?
# No.

# Let's go back to "Field Extraction".
# The regex extraction `exploit_extract_flag_field.py` failed with "matches everything".
# This means `{"flag": {"$regex": "^a"}}` returns 500.
# And `{"flag": {"$regex": "^z"}}` returns 500.
# This happens if `flag` field matches BOTH? Impossible.
# OR if the error 500 is caused by something else.
# The payload was: `email: target, password: {$ne: 1}, flag: {$regex: ...}`
# If `email` matches, we get User object.
# Then we check `password` (fails, 401).
# Wait, the 500 comes from `password: {$ne: 1}` crashing the comparison IF the user is found.
# The extra field `flag: {$regex: ...}` is executed by MongoDB as part of the query.
# `findOne({ email: ..., flag: ... })`
# If `flag` condition matches, User is found -> Password check crashes -> 500.
# If `flag` condition DOES NOT match, User not found -> 401 (Invalid credentials).
# So if `^a` causes 500, it means `flag` starts with `a`.
# If `^z` causes 500, it means `flag` starts with `z`.
# If BOTH cause 500, then `flag` field contains multiline? or has array of values?
# OR, the field injection is IGNORED and it just finds the user by email.
# This would explain why it always returns 500 (User found by email, password crash).
# So, my injection of extra fields into `login` is NOT filtering the user.
# It's just ignored extra fields in the body.
# The login query is likely strict: `findOne({ email: req.body.email })`.
# It doesn't take arbitrary fields from `req.body` into the query.
# That was a false assumption.

# So, I cannot use Login Oracle to extract fields that are not email/password.
# Unless I can inject into email/password.
# I tried $where in email. It seemed to fail (always 401 or 500).
# `exploit_where_extract.py`: "Oracle DEAD".

# Let's re-evaluate $where.
# If `email: {"$where": "..."}` works, it replaces the string match.
# But the backend might sanitize `req.body.email` to be a string?
# Or the query structure is `findOne({ email: req.body.email })`.
# If I send object `email: {$where: ...}`, express body parser passes it as object.
# Mongoose/MongoDB driver might cast it to string (resulting in "[object Object]") or throw error.
# If it throws error -> 500.
# If it casts -> 401 (user not found).
# My previous test `exploit_blind_where.py` showed "Baseline match: 401".
# This suggests `$where` was NOT working or eval to false.

# WHAT IF I use the valid token of d3vnu11?
# I can't get it.
# But I can verify my token signature...
# I tried Bruteforce. Failed.
# I tried Key Confusion. Failed (Error: ... asymmetric key ...).
# This means the server is patched against Key Confusion (checks key type).
# OR I am using the library locally to test, and the server behaves differently?
# No, the error `Error: The specified key is...` came from MY script (pyjwt library), not the server.
# I fixed this in `exploit_manual_jwt.py` (signing manually).
# Result was 403.
# This means the server is NOT accepting the public key as HMAC secret.
# So Key Confusion failed.

# What remains?
# 1. **APK Analysis**: I missed something in the APK.
#    - `Z/i.java` uses `Unsafe OkHttpClient`. This allows Man-in-the-Middle.
#    - But I am not MITMing. I am the attacker.
#    - `f708f` (Server URL) is built from SharedPreferences.
#    - `u.java` handles notes.
#    - `check-permission` endpoint.
# 2. **API Endpoints**:
#    - `/auth/register`
#    - `/auth/login`
#    - `/notes` (GET, POST)
#    - `/notes/:id` (GET, DELETE)
#    - `/notes/:id/check-permission` (GET) - Used by app.
#    - `/auth/verify` (GET) - Used by app.

# 3. **Vulnerability**:
#    - NoSQL Injection in `login` (Password 500 error). Confirmed.
#    - Can we use it to bypass login?
#    - We tried `password: []`, `password: {"$ne": 1}`.
#    - Result: 500.
#    - We need 200.
#    - 500 means crash. Crash means NO token.
#    - We need the server to NOT crash and return token.
#    - Server likely does: `bcrypt.compare(req.body.password, user.password)`.
#    - If `req.body.password` is object -> Crash.
#    - If `req.body.password` is string -> Works.
#    - We need a string that matches without knowing the password? No.
#    - We need `bcrypt` to accept an object/array as TRUE?
#    - Weak typing in JS? `bcrypt.compare([], hash)` -> usually Error.

# 4. **Extraction via 500 Oracle**:
#    - We can extract THE PASSWORD.
#    - `exploit_blind_login.py` tried this using regex on PASSWORD field.
#    - `password: {"$regex": "^a"}` -> 500 if match?
#    - Wait. If I send `password: {"$regex": "^a"}`, it IS an object.
#    - So it crashes (500) regardless of regex match?
#    - `exploit_check_oracle_manual.py`:
#      - `^a`: 500
#      - `^b`: 500
#      - `^.`: 500
#    - YES. It crashes for ANY object.
#    - So I cannot use this to extract the password. The crash happens purely because of type, not content match.

# 5. **Wait, what about `exploit_blind_login.py` results?**
#    - It found `aaaaaaaaaaaaaaaa...`.
#    - Because `^a` gave 500. `^b` gave 500. `^c` gave 500.
#    - It just picked the first char 'a' every time.
#    - So extraction FAILED.

# CONCLUSION:
# - I cannot bypass login with NoSQL.
# - I cannot extract password with NoSQL (because crash is type-based, not value-based).
# - I cannot list admin notes with NoSQL in ID (because filter logic).
# - Key Confusion failed.
# - None Algorithm failed.

# BACK TO BASICS:
# - The Flag is in a note with id="flag" owned by "d3vnu11@htb.com".
# - I need to read it.
# - I have LFI confirmed?
#   - `exploit_lfi_alias.py`: "RESULT: DB Content Returned".
#   - I tried creating note id="/app/package.json". It returned note content, not file.
#   - So LFI NOT confirmed.

# - I have IDOR?
#   - `exploit_idor.py`: 403.
#   - Server checks ownership.

# - Is there another endpoint?
#   - `/notes/:id/check-permission`
#   - What does it return?
#   - Code says: `sVar.d(this.f735d + "/notes/" + str + "/check-permission");`
#   - `u.java`: `a()` calls `check-permission`.
#   - `s.java`: `f()` handles failure.
#   - Let's invoke this endpoint for 'flag'.

print("Checking permission endpoint...")
