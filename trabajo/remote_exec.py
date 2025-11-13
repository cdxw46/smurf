#!/usr/bin/env python3
import socket
import sys
import time

HOST = "tethys.picoctf.net"
PORT = 64214
PASSWORD = "My_Passw@rd_@1234"
ANSWERS = [
    PASSWORD,
    "DEFCON",
    "John Draper",
]
PROMPT = "player@challenge:~$ "


def recv_until(sock, markers, timeout=5):
    sock.settimeout(timeout)
    data = b""
    while True:
        try:
            chunk = sock.recv(4096)
        except socket.timeout:
            break
        if not chunk:
            break
        data += chunk
        if any(marker.encode() in data for marker in markers):
            break
    text = data.decode("utf-8", errors="replace")
    sys.stdout.write(text)
    sys.stdout.flush()
    return text


def main():
    commands = sys.argv[1:]
    with socket.create_connection((HOST, PORT)) as sock:
        recv_until(sock, ["password?"])
        sock.sendall((ANSWERS[0] + "\n").encode())
        recv_until(sock, ["conference"])
        sock.sendall((ANSWERS[1] + "\n").encode())
        recv_until(sock, ["phreaking"])
        sock.sendall((ANSWERS[2] + "\n").encode())
        recv_until(sock, [PROMPT])

        for cmd in commands:
            sock.sendall((cmd + "\n").encode())
            recv_until(sock, [PROMPT])
        sock.sendall(b"exit\n")
        recv_until(sock, ["logout", "Connection closed"], timeout=1)

if __name__ == "__main__":
    main()
