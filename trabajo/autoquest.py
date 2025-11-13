#!/usr/bin/env python3
import os
import pty
import struct
import subprocess
from collections import deque


def read_exact(stream, n):
    data = bytearray()
    while len(data) < n:
        chunk = stream.read(n - len(data))
        if not chunk:
            raise EOFError('unexpected EOF')
        data.extend(chunk)
    return bytes(data)


def overlaps_sprite(px, py, x, y, width, height):
    xs = {(px + dx) % width for dx in range(3)}
    ys = {(py + dy) % height for dy in range(2)}
    return x in xs and y in ys


def plan_moves(player, target, width, height, bomb):
    if target is None:
        return []
    px, py = player
    tx, ty = target
    desired_x = (tx - 1) % width
    desired_y = ty % height
    bomb_pos = bomb

    def move_axis(current, desired, size, pos_cmd, neg_cmd):
        forward = (desired - current) % size
        backward = (current - desired) % size
        if forward <= backward:
            return pos_cmd * forward, (current + forward) % size
        else:
            return neg_cmd * backward, (current - backward) % size

    def simulate(sequence):
        px_sim, py_sim = px, py
        for cmd in sequence:
            if cmd == 'd':
                px_sim = (px_sim + 1) % width
            elif cmd == 'a':
                px_sim = (px_sim - 1) % width
            elif cmd == 's':
                py_sim = (py_sim + 1) % height
            elif cmd == 'w':
                py_sim = (py_sim - 1) % height
            if bomb_pos and overlaps_sprite(px_sim, py_sim, bomb_pos[0], bomb_pos[1], width, height):
                return None
        return list(sequence) + ['l']

    horiz_seq, px_after = move_axis(px, desired_x, width, 'd', 'a')
    vert_seq, py_after = move_axis(py, desired_y, height, 's', 'w')
    seq1 = simulate(horiz_seq + vert_seq)
    vert_seq2, py_after2 = move_axis(py, desired_y, height, 's', 'w')
    horiz_seq2, px_after2 = move_axis(px, desired_x, width, 'd', 'a')
    seq2 = simulate(vert_seq2 + horiz_seq2)

    if seq1 is not None:
        return seq1
    if seq2 is not None:
        return seq2

    return ['l']


def main():
    master_fd, slave_fd = pty.openpty()
    proc = subprocess.Popen(
        ['/challenge/quest.py'],
        stdin=slave_fd,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        close_fds=True,
    )
    os.close(slave_fd)

    header = read_exact(proc.stdout, 4 + 2 + 1 + 1 + 4)
    magic = header[:4]
    version, width, height, remaining = struct.unpack('<HBBI', header[4:])
    if magic != b'CNNR':
        raise SystemExit(f'Unexpected magic: {magic!r}')
    print(f'[+] Header width={width} height={height}', flush=True)

    moves = deque()
    player = (0, 0)
    target = None
    bomb = None
    sprite_rendered = False
    revealed_map = {}
    revealed_order = []
    frames_without_target = 0
    game_started = False
    exiting = False
    frame_target = None
    frame_bomb = None
    op_count = 0
    flag_found = False
    captured_flag = None

    while True:
        if exiting:
            break
        data = proc.stdout.read(2)
        if not data:
            break
        code, = struct.unpack('<H', data)
        op_count += 1
        if op_count < 10:
            print(f'[+] opcode {code}', flush=True)
        if code == 1:
            read_exact(proc.stdout, width * height * 4)
        elif code == 2:
            patch_header = read_exact(proc.stdout, 4)
            x, y, w, h = patch_header
            payload = read_exact(proc.stdout, w * h * 4)
            chars = [payload[i*4 + 3] for i in range(w * h)]
            if w == 1 and h == 1:
                ch = chars[0]
                if ch == ord('?'):
                    frame_target = (x, y)
                elif ch == ord('B'):
                    frame_bomb = (x, y)
                elif ch != ord(' ') and game_started:
                    key = (x, y)
                    if key not in revealed_map:
                        revealed_map[key] = chr(ch)
                        revealed_order.append(chr(ch))
                        joined = ''.join(revealed_order)
                        print(f'[+] Flag progress ({len(revealed_order)}): {joined}', flush=True)
                        target = None
                        if not flag_found:
                            start = joined.find('pwn.college{')
                            if start != -1:
                                end = joined.find('}', start)
                                if end != -1:
                                    flag = joined[start:end+1]
                                    print(f'[+] Flag captured: {flag}', flush=True)
                                    os.write(master_fd, b'\x03')
                                    flag_found = True
                                    captured_flag = flag
                                    break
            continue
        elif code == 3:
            header = read_exact(proc.stdout, 3)
            w = header[1]
            h = header[2]
            read_exact(proc.stdout, w * h)
            continue
        elif code == 4:
            info = read_exact(proc.stdout, 9)
            sprite_rendered = True
            player = (info[4], info[5])
            print(f'[+] render_sprite player at {player}', flush=True)
            game_started = True
            continue
        elif code == 5:
            hdr = read_exact(proc.stdout, 3)
            w = hdr[1]
            h = hdr[2]
            read_exact(proc.stdout, w * h * 4)
            continue
        elif code == 6:
            clear = read_exact(proc.stdout, 1)
            target = frame_target
            bomb = frame_bomb
            frame_target = None
            frame_bomb = None
            if not game_started:
                os.write(master_fd, b' ')
                print('[+] Sent key (waiting for game start)', flush=True)
                continue
            if not sprite_rendered:
                continue
            sprite_rendered = False
            if target is None:
                frames_without_target += 1
            else:
                frames_without_target = 0
            if frames_without_target >= 4 and revealed_order:
                os.write(master_fd, b'\x03')
                exiting = True
                continue
            if moves:
                cmd = moves.popleft()
                os.write(master_fd, cmd.encode())
            else:
                if target is not None:
                    path = plan_moves(player, target, width, height, bomb)
                    if path:
                        print(f'[+] Moving towards target {target} with path {"".join(path)}', flush=True)
                    moves.extend(path or [])
                    if moves:
                        cmd = moves.popleft()
                        os.write(master_fd, cmd.encode())
                else:
                    exploration = deque(list('ldwas'))
                    moves.extend(exploration)
            continue
        elif code == 7:
            read_exact(proc.stdout, 4)
            continue
        else:
            raise SystemExit(f'Unknown directive {code}')

    proc.wait()
    stderr_output = proc.stderr.read().decode().strip()
    if captured_flag:
        print(captured_flag)
    if stderr_output:
        print(stderr_output)

if __name__ == '__main__':
    main()
