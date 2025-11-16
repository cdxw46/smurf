#!/usr/bin/env python3
import base64
import re
from pathlib import Path

from Cryptodome.Cipher import AES
from Cryptodome.Util.Padding import unpad

KEY_HEX = '4d65bdbad183f00203b1e80cf96fba549663dabeab12fab153a921b346975cdd'
IV = b'infinity_edgehtb'

REQUEST_FLOW = 'flows/109.070.100.019.19618-192.168.200.008.00080'
RESPONSE_FLOW = 'flows/192.168.200.008.00080-109.070.100.019.19618'
BRNRN = b"\r\n\r\n"
RN = "\r\n"
BRN = b"\r\n"

def parse_http_messages(path: str):
    data = Path(path).read_bytes()
    i = 0
    messages = []
    length = len(data)
    while i < length:
        header_end = data.find(BRNRN, i)
        if header_end == -1:
            break
        header_bytes = data[i:header_end]
        if not header_bytes:
            break
        header_text = header_bytes.decode('iso-8859-1', errors='ignore')
        lines = header_text.split(RN)
        if not lines or not lines[0]:
            break
        first_line = lines[0]
        headers = {}
        for line in lines[1:]:
            if ':' in line:
                k, v = line.split(':', 1)
                headers[k.strip().lower()] = v.strip()
        content_length = int(headers.get('content-length', '0') or '0')
        body_start = header_end + len(BRNRN)
        body_end = body_start + content_length
        body = data[body_start:body_end]
        messages.append((first_line, headers, body))
        i = body_end
        while i < length and data[i] in BRN:
            i += 1
    return messages

def extract_request_payload(body: bytes) -> str | None:
    text = body.decode('utf-8', errors='ignore')
    match = re.search(r'name="data".*?\r?\n\r?\n([A-Za-z0-9+/=\r\n]+)\r?\n--', text, re.S)
    if match:
        return ''.join(match.group(1).split())
    return None

def extract_response_payload(body: bytes) -> str:
    return body.strip().decode('ascii', errors='ignore')

def decrypt_payload(b64_data: str) -> str:
    raw = base64.b64decode(b64_data)
    cipher = AES.new(bytes.fromhex(KEY_HEX), AES.MODE_CBC, IV)
    plain = cipher.decrypt(raw)
    try:
        plain = unpad(plain, AES.block_size)
    except ValueError:
        pass
    return plain.decode('utf-8', errors='replace')

def main():
    requests = parse_http_messages(REQUEST_FLOW)
    responses = parse_http_messages(RESPONSE_FLOW)
    req_payloads = []
    for idx, (line, headers, body) in enumerate(requests):
        if not line.startswith('POST'):
            continue
        payload = extract_request_payload(body)
        if payload:
            req_payloads.append({'index': idx, 'cipher': payload})
    resp_payloads = []
    for idx, (line, headers, body) in enumerate(responses):
        if not line.startswith('HTTP/1.1 200'):
            continue
        resp_payloads.append({'index': idx, 'cipher': extract_response_payload(body)})
    total = min(len(req_payloads), len(resp_payloads))
    outputs = []
    for i in range(total):
        req = req_payloads[i]
        resp = resp_payloads[i]
        outputs.append({
            'seq': i + 1,
            'request_plain': decrypt_payload(req['cipher']),
            'response_plain': decrypt_payload(resp['cipher'])
        })
    for entry in outputs:
        print(f"=== Entrada {entry['seq']:02d} ===")
        print("[Solicitud descifrada]\\n" + entry['request_plain'].strip())
        print("\\n[Respuesta descifrada]\\n" + entry['response_plain'].strip())
        print()


if __name__ == '__main__':
    main()
