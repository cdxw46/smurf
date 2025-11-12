import subprocess
import struct
from pathlib import Path
from functools import lru_cache

FONT_DIR = Path('.')


def render(text: str):
    if not text:
        return []
    out = subprocess.check_output(['figlet', '-d', str(FONT_DIR), '-f', 'ascii9'], input=text.encode())
    lines = out.rstrip(b'\n').split(b'\n')
    while lines and set(lines[0]) <= {32}:
        lines.pop(0)
    while lines and set(lines[-1]) <= {32}:
        lines.pop()
    return [line.decode('latin1').rstrip() for line in lines]


@lru_cache(maxsize=None)
def render_cached(text: str):
    return render(text)


def load_segments(path: Path):
    data = path.read_bytes()
    off = 4
    version, width, height = struct.unpack_from('<HBB', data, off)
    off += 4
    remaining, = struct.unpack_from('<I', data, off)
    off += 4
    rows = [[' '] * width for _ in range(height)]
    for _ in range(remaining):
        code, = struct.unpack_from('<H', data, off)
        off += 2
        if code == 2:
            x, y, w, h, r, g, b, ch = struct.unpack_from('BBBBBBBB', data, off)
            off += 8
            ch = chr(ch)
            for dy in range(h):
                for dx in range(w):
                    rows[y + dy][x + dx] = ch
        elif code == 6:
            off += 1
        elif code == 7:
            off += 4
    lines = [''.join(r) for r in rows]
    segments, current = [], []
    for line in lines:
        if set(line) == {' '}:
            if current:
                segments.append(current)
                current = []
        else:
            current.append(line)
    if current:
        segments.append(current)
    return segments


special_chars = ['{', '}', '_', '.', '-']
ALLOWED_CHARS = ''.join(sorted(set(special_chars + [str(d) for d in range(10)] +
                                [chr(c) for c in range(ord('A'), ord('Z') + 1)] +
                                [chr(c) for c in range(ord('a'), ord('z') + 1)])))


def decode_segment(segment_lines, length, initial_prefix=''):
    target = [line.rstrip() for line in segment_lines]
    height = len(target)
    target_widths = [len(line) for line in target]

    @lru_cache(maxsize=None)
    def dfs(prefix: str):
        if len(prefix) > length:
            return None
        rendered = render_cached(prefix)
        if rendered:
            if len(rendered) != height:
                return None
            for r in range(height):
                line = rendered[r]
                if len(line) > target_widths[r]:
                    return None
                if not target[r].startswith(line):
                    return None
            if len(prefix) == length and all(len(rendered[r]) == target_widths[r] for r in range(height)):
                return prefix
        else:
            if len(prefix) == length:
                return prefix
        if len(prefix) < length:
            for ch in ALLOWED_CHARS:
                res = dfs(prefix + ch)
                if res:
                    return res
        return None

    return dfs(initial_prefix)


def main():
    # Reconstruct full target lines directly from the cIMG file
    path = Path('flag_anim.cimg')
    data = path.read_bytes()
    off = 4
    version, width, height = struct.unpack_from('<HBB', data, off)
    off += 4
    remaining, = struct.unpack_from('<I', data, off)
    off += 4
    rows = [[' '] * width for _ in range(height)]
    for _ in range(remaining):
        code, = struct.unpack_from('<H', data, off)
        off += 2
        if code == 2:
            x, y, w, h, r, g, b, ch = struct.unpack_from('BBBBBBBB', data, off)
            off += 8
            ch = chr(ch)
            for dy in range(h):
                for dx in range(w):
                    rows[y + dy][x + dx] = ch
        elif code == 6:
            off += 1
        elif code == 7:
            off += 4
    lines = [''.join(r) for r in rows]
    while lines and set(lines[0]) <= {' '}:
        lines.pop(0)
    while lines and set(lines[-1]) <= {' '}:
        lines.pop()
    target_lines = [line.rstrip() for line in lines]

    allowed_chars = ['{', '}', '_', '.', '-']
    allowed_chars += [str(d) for d in range(10)]
    allowed_chars += [chr(c) for c in range(ord('A'), ord('Z') + 1)]
    allowed_chars += [chr(c) for c in range(ord('a'), ord('z') + 1)]
    allowed_chars = ''.join(sorted(set(allowed_chars)))

    prefix = 'pwn.college{czSDMz0e93'

    from functools import lru_cache

    @lru_cache(maxsize=None)
    def dfs(current: str):
        rendered = render_cached(current)
        if len(rendered) > len(target_lines):
            return None
        if not all(target_lines[i].startswith(rendered[i]) for i in range(len(rendered))):
            return None
        if len(rendered) == len(target_lines) and all(rendered[i] == target_lines[i] for i in range(len(rendered))):
            return current
        for ch in allowed_chars:
            res = dfs(current + ch)
            if res:
                print(f'Extended: {current + ch}')
                return res
        return None

    flag = dfs(prefix)
    if not flag:
        raise RuntimeError('Failed to decode flag')
    print('Flag guess:', flag)


if __name__ == '__main__':
    main()
