import base64, base91, bz2, gzip, lzma, zlib, pathlib
from collections import deque
from string import ascii_letters, digits
text = pathlib.Path("/workspace/base_maze/cipher_real.txt").read_text()
queue = deque()
queue.append(("start", text))
visited = set([("str", text)])
base_alphabets = {
    "base64": set(ascii_letters + digits + "+/="),
    "base32": set("ABCDEFGHIJKLMNOPQRSTUVWXYZ234567="),
    "base16": set("0123456789abcdefABCDEF"),
    "ascii85": set(chr(i) for i in range(33, 118)),
    "base85": set(chr(i) for i in range(33, 118)),
    "base91": set(base91.base91_alphabet),
}
decoders = {
    "base64": lambda s: base64.b64decode(s, validate=True),
    "base32": lambda s: base64.b32decode(s, casefold=True),
    "base16": lambda s: base64.b16decode(s.upper()),
    "ascii85": lambda s: base64.a85decode(s),
    "base85": lambda s: base64.b85decode(s),
    "base91": lambda s: base91.decode(s),
}
step_limit = 10000
steps = 0
while queue and steps < step_limit:
    desc, data = queue.popleft()
    steps += 1
    if isinstance(data, bytes):
        for encoding in ['utf-8', 'latin1']:
            try:
                text_repr = data.decode(encoding)
            except Exception:
                continue
            if 'flag' in text_repr.lower():
                print('found flag text via', encoding, 'after', desc)
                print(text_repr)
                raise SystemExit
        if b'flag' in data.lower():
            print('found raw flag', desc, data)
            raise SystemExit
        if b'\n' in data:
            for i, seg in enumerate(data.split(b'\n')):
                if not seg:
                    continue
                part = seg.decode('latin1')
                key = ("str", part)
                if key not in visited:
                    visited.add(key)
                    queue.append((desc + f" -> split[{i}]", part))
        for name, func in [("zlib", lambda b: zlib.decompress(b)),
                           ("zlib-raw", lambda b: zlib.decompress(b, -15)),
                           ("gzip", lambda b: gzip.decompress(b)),
                           ("bz2", lambda b: bz2.decompress(b)),
                           ("lzma", lambda b: lzma.decompress(b))]:
            try:
                out = func(data)
            except Exception:
                continue
            key = ("bytes", out)
            if key not in visited:
                visited.add(key)
                queue.append((desc + f" -> {name}", out))
        # attempt to treat as base string when alphabet matches
        text_latin = data.decode('latin1')
        for name, alphabet in base_alphabets.items():
            if set(text_latin) <= alphabet:
                try:
                    out = bytes(decoders[name](text_latin))
                except Exception:
                    continue
                key = ("bytes", out)
                if key not in visited:
                    visited.add(key)
                    queue.append((desc + f" -> {name}", out))
    else:
        s = data
        for name, func in decoders.items():
            try:
                out = bytes(func(s))
            except Exception:
                continue
            key = ("bytes", out)
            if key not in visited:
                visited.add(key)
                queue.append((desc + f" -> {name}", out))
print('search exhausted without flag, steps', steps)
