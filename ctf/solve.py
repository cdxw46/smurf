#!/usr/bin/env python3
import hashlib
import math
import socket
import sys


HOST = "mercury.picoctf.net"
PORT = 48006
MAX_DP = 1 << 20
BASES = [2, 3, 5, 7, 11, 13, 17, 19, 23]


def recv_line(file_obj):
    line = file_obj.readline()
    if not line:
        raise EOFError("connection closed unexpectedly")
    return line.decode()


def parse_pow_line(line):
    prefix = line.split("\"")[1]
    suffix = line.rsplit(" ", 1)[-1].strip()
    return prefix, suffix


def solve_pow(prefix, suffix):
    base_hash = hashlib.md5()
    base_hash.update(prefix.encode())
    i = 0
    while True:
        trail = f"{i:08x}"
        h = base_hash.copy()
        h.update(trail.encode())
        if h.hexdigest().endswith(suffix):
            return prefix + trail
        i += 1


def recover_factors(n, e):
    for a in BASES:
        if math.gcd(a, n) != 1:
            continue
        multiplier = pow(a, e, n)
        value = pow(a, e - 1, n)
        for _ in range(1, MAX_DP + 1):
            g = math.gcd(value - 1, n)
            if 1 < g < n:
                return g, n // g
            if g == n:
                value = (value * multiplier) % n
                continue
            value = (value * multiplier) % n
    raise ValueError("failed to factor n with given bases")


def main():
    with socket.create_connection((HOST, PORT)) as sock:
        file_obj = sock.makefile("rwb", buffering=0)
        pow_prompt = recv_line(file_obj)
        sys.stdout.write(pow_prompt)
        prefix, suffix = parse_pow_line(pow_prompt)
        solution = solve_pow(prefix, suffix)
        file_obj.write(solution.encode() + b"\n")
        file_obj.flush()
        sys.stdout.write(f"sent: {solution}\n")

        info_lines = []
        while len(info_lines) < 2:
            line = recv_line(file_obj)
            sys.stdout.write(line)
            if "Public Modulus" in line or "Clue" in line:
                info_lines.append(line)

        n = int(info_lines[0].split(":")[1].strip())
        e = int(info_lines[1].split(":")[1].strip())

        p, q = recover_factors(n, e)
        answer = str(p + q)
        file_obj.write(answer.encode() + b"\n")
        file_obj.flush()

        while True:
            data = file_obj.readline()
            if not data:
                break
            sys.stdout.buffer.write(data)


if __name__ == "__main__":
    main()
