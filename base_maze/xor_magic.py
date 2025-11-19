import base91, pathlib
from collections import deque
text = pathlib.Path("/workspace/base_maze/cipher_real.txt").read_text()
queue = deque([text])
final = []
while queue:
    item = queue.popleft()
    if isinstance(item, str):
        queue.append(bytes(base91.decode(item)))
    else:
        if b"\n" in item:
            for seg in item.split(b"\n"):
                if seg:
                    queue.append(seg.decode("latin1"))
        else:
            final.append(item)
msg = b"".join(final)
signatures = {
    b"\x1f\x8b": "gzip",
    b"BZh": "bzip2",
    b"\xFD7zXZ": "xz",
    b"PK": "zip",
    b"7z\xBC\xAF'\x1C": "7z",
    b"\x28\xB5/\xFD": "zstd",
}
for key in range(256):
    transformed = bytes(b ^ key for b in msg)
    for magic, name in signatures.items():
        if transformed.startswith(magic):
            print("key", key, "->", name)
            raise SystemExit
print("no signature found")
