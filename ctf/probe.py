import socket
import hashlib
import sys

HOST = "mercury.picoctf.net"
PORT = 48006

def solve_pow(prefix, suffix):
    i = 0
    prefix_bytes = prefix.encode()
    while True:
        trail = f"{i:08x}"
        candidate = prefix_bytes + trail.encode()
        if hashlib.md5(candidate).hexdigest().endswith(suffix):
            return prefix + trail
        if i % 1000000 == 0 and i != 0:
            print(f"iters {i}", file=sys.stderr)
        i += 1

def main():
    with socket.create_connection((HOST, PORT)) as sock:
        sock_file = sock.makefile("rwb", buffering=0)
        line = sock_file.readline().decode()
        sys.stdout.write(line)
        prefix = line.split("\"")[1]
        suffix = line.rsplit(" ", 1)[-1].strip()
        ans = solve_pow(prefix, suffix)
        sock_file.write(ans.encode() + b"\n")
        sock_file.flush()
        sys.stdout.write(f"sent: {ans}\n")
        sock.settimeout(3)
        while True:
            try:
                data = sock_file.readline()
            except socket.timeout:
                break
            if not data:
                break
            sys.stdout.buffer.write(data)

if __name__ == "__main__":
    main()
