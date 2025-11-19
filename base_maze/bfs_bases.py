import base64, base91, base45
from base58 import b58decode
from collections import deque
from string import ascii_letters, digits
import pathlib

start = pathlib.Path('cipher_real.txt').read_text().strip()

alphabets = {
    'base91': set(base91.base91_alphabet),
    'b85': set(chr(i) for i in range(33, 118)),
    'a85': set(chr(i) for i in range(33, 118)),
    'base64': set(ascii_letters + digits + '+/='),
    'base32': set('ABCDEFGHIJKLMNOPQRSTUVWXYZ234567='),
    'base16': set('0123456789abcdefABCDEF'),
    'base45': set('0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:'),
    'base58': set('123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz'),
    'base62': set(digits + ascii_letters),
}

thresholds = {
    'base91': 0.9,
    'b85': 0.9,
    'a85': 0.9,
    'base64': 1.0,
    'base32': 1.0,
    'base16': 1.0,
    'base45': 1.0,
    'base58': 1.0,
    'base62': 1.0,
}


def sanitize(s: str):
    return ''.join(ch for ch in s if not ch.isspace())


def fits(s: str, name: str) -> bool:
    data = sanitize(s)
    if not data:
        return False
    alphabet = alphabets[name]
    allowed = sum(1 for ch in data if ch in alphabet)
    return allowed / len(data) >= thresholds[name]


def decode_base62(s: str) -> bytes:
    alp = digits + ascii_letters
    idx = {c: i for i, c in enumerate(alp)}
    s = sanitize(s)
    value = 0
    for ch in s:
        value = value * 62 + idx[ch]
    if value == 0:
        return b'\x00'
    length = (value.bit_length() + 7) // 8
    return value.to_bytes(length, 'big')

base_decoders = [
    ('base91', lambda s: base91.decode(s)),
    ('b85', lambda s: base64.b85decode(sanitize(s))),
    ('a85', lambda s: base64.a85decode(sanitize(s))),
    ('base64', lambda s: base64.b64decode(sanitize(s) + '=' * ((4 - len(sanitize(s)) % 4) % 4))),
    ('base32', lambda s: base64.b32decode(sanitize(s), casefold=True)),
    ('base16', lambda s: base64.b16decode(sanitize(s).upper())),
    ('base45', lambda s: base45.b45decode(s)),
    ('base58', lambda s: b58decode(s)),
    ('base62', lambda s: decode_base62(s)),
]

queue = deque([('start', start)])
visited = set([('str', start)])
steps = 0
max_steps = 5000
while queue and steps < max_steps:
    desc, data = queue.popleft()
    steps += 1
    if isinstance(data, bytes):
        lowered = data.lower()
        if b'flag' in lowered:
            print('FOUND FLAG BYTES', desc, data)
            break
        try:
            text_utf8 = data.decode()
        except Exception:
            text_utf8 = None
        if text_utf8 and 'flag' in text_utf8.lower():
            print('FOUND FLAG UTF8', desc, text_utf8)
            break
        text_latin = data.decode('latin1', errors='ignore')
        key = ('str', text_latin)
        if key not in visited:
            visited.add(key)
            queue.append((desc + ' -> latin1', text_latin))
        if b'\n' in data:
            for i, seg in enumerate(data.split(b'\n')):
                if not seg:
                    continue
                try:
                    seg_text = seg.decode('latin1')
                except Exception:
                    continue
                key = ('str', seg_text)
                if key not in visited:
                    visited.add(key)
                    queue.append((desc + f' -> split[{i}]', seg_text))
        continue
    else:
        s = data
        for (name, decoder) in base_decoders:
            if not fits(s, name):
                continue
            try:
                out = bytes(decoder(s))
            except Exception:
                continue
            key = ('bytes', out)
            if key in visited:
                continue
            visited.add(key)
            queue.append((desc + f' -> {name}', out))
else:
    print('Search ended without flag, steps', steps)
