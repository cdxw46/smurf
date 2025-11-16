#!/usr/bin/env python3
import socket
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

def get_status():
    s=socket.create_connection((HOST,PORT))
    banner=s.recv(4096)
    s.sendall(b"1")
    data=recv_all(s)
    s.close()
    return (banner+data).decode(errors="ignore")

def send_modbus(cmd):
    s=socket.create_connection((HOST,PORT))
    banner=s.recv(4096)
    s.sendall(b"2\n")
    prompt=s.recv(4096)
    s.sendall(cmd.encode()+b"\n")
    resp=recv_all(s)
    s.close()
    return (banner+prompt+resp).decode(errors="ignore")

if __name__=="__main__":
    import sys
    if len(sys.argv)==1:
        print(get_status())
    else:
        print(send_modbus(sys.argv[1]))
