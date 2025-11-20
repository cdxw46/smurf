#!/usr/bin/env python3
import socket

SQUARE_SIZE = 6
HOST = 'mercury.picoctf.net'
PORT = 33686

def recv_until(sock, marker=b'What is the plaintext message?'):
    data = b''
    while marker not in data:
        chunk = sock.recv(4096)
        if not chunk:
            break
        data += chunk
    return data

def build_matrix(alphabet):
    return [list(alphabet[i:i+SQUARE_SIZE]) for i in range(0, len(alphabet), SQUARE_SIZE)]

def get_index(letter, matrix):
    for r, row in enumerate(matrix):
        for c, val in enumerate(row):
            if val == letter:
                return r, c
    raise ValueError(f'letter {letter} not found')

def decrypt_pair(pair, matrix):
    p1 = get_index(pair[0], matrix)
    p2 = get_index(pair[1], matrix)
    if p1[0] == p2[0]:
        return matrix[p1[0]][(p1[1] - 1) % SQUARE_SIZE] + matrix[p2[0]][(p2[1] - 1) % SQUARE_SIZE]
    if p1[1] == p2[1]:
        return matrix[(p1[0] - 1) % SQUARE_SIZE][p1[1]] + matrix[(p2[0] - 1) % SQUARE_SIZE][p2[1]]
    return matrix[p1[0]][p2[1]] + matrix[p2[0]][p1[1]]

def decrypt_string(enc, matrix):
    return ''.join(decrypt_pair(enc[i:i+2], matrix) for i in range(0, len(enc), 2))

def main():
    with socket.create_connection((HOST, PORT)) as sock:
        banner = recv_until(sock)
        text = banner.decode()
        lines = [line.strip() for line in text.split('\n') if line.strip()]
        alphabet_line = next(line for line in lines if line.startswith('Here is the alphabet'))
        enc_line = next(line for line in lines if line.startswith('Here is the encrypted message'))
        alphabet = alphabet_line.split(':', 1)[1].strip()
        enc = enc_line.split(':', 1)[1].strip()
        matrix = build_matrix(alphabet)
        plain = decrypt_string(enc, matrix)
        sock.sendall((plain + '\n').encode())
        response = sock.recv(4096)
        print(text)
        print(response.decode())

if __name__ == '__main__':
    main()
