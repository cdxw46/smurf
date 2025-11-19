import base64, base91, base45
from base58 import b58decode
from collections import deque
from string import ascii_letters, digits
import pathlib

start = pathlib.Path("cipher_real.txt").read_text()

alphabets = {
    "base91": set(base91.base91_alphabet),
    "ascii85": set(chr(i) for i in range(33, 118)),
    "base64": set(ascii_letters + digits + "+/="),
    "base32": set("ABCDEFGHIJKLMNOPQRSTUVWXYZ234567="),
    "base16": set("0123456789abcdefABCDEF"),
    "base58": set("123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz"),
    "base62": set(digits + ascii_letters),
    "base45": set("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"),
}

def sanitize(text: str) -> str:
    return "".join(ch for ch in text if not ch.isspace())

thresholds = {
    "base91": 0.9,
    "ascii85": 0.9,
    "base64": 0.95,
    "base32": 0.95,
    "base16": 0.95,
    "base58": 0.95,
    "base62": 0.95,
    "base45": 0.95,
}

def decode(name: str, text: str):
    clean = sanitize(text)
    if not clean:
        return None
    alphabet = alphabets[name]
    allowed = sum(1 for ch in clean if ch in alphabet)
    ratio = allowed / len(clean)
    if ratio < thresholds[name]:
        return None
    filtered = "".join(ch for ch in clean if ch in alphabet)
    try:
        if name == "base91":
            return bytes(base91.decode(filtered))
        if name == "ascii85":
            return base64.a85decode(filtered)
        if name == "base64":
            padded = filtered + "=" * ((4 - len(filtered) % 4) % 4)
            return base64.b64decode(padded, validate=False)
        if name == "base32":
            return base64.b32decode(filtered, casefold=True)
        if name == "base16":
            return base64.b16decode(filtered.upper())
        if name == "base58":
            return b58decode(filtered)
        if name == "base62":
            alphabet62 = digits + ascii_letters
            idx = {c: i for i, c in enumerate(alphabet62)}
            value = 0
            for ch in filtered:
                value = value * 62 + idx[ch]
            length = (value.bit_length() + 7) // 8
            return value.to_bytes(length or 1, big)
        if name == "base45":
            return base45.b45decode(filtered)
    except Exception:
        return None
    return None

queue = deque([("start", start)])
visited = set([("str", start)])
while queue:
    desc, data = queue.popleft()
    if isinstance(data, bytes):
        lower = data.lower()
        if b"flag" in lower:
            print("FLAG BYTES", desc, data)
            break
        text_ascii = "".join(chr(b) for b in data if 32 <= b < 127)
        if text_ascii:
            key = ("str", text_ascii)
            if key not in visited:
                visited.add(key)
                queue.append((desc + " -> ascii", text_ascii))
        continue
    else:
        text = data
        for name in ["base91", "ascii85", "base64", "base32", "base16", "base58", "base62", "base45"]:
            result = decode(name, text)
            if result is None:
                continue
            key = ("bytes", result)
            if key in visited:
                continue
            visited.add(key)
            queue.append((desc + f" -> {name}", result))
else:
    print("exhausted without flag")
