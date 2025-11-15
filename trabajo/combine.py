import subprocess
from pathlib import Path
files = ["chall-i1.pcap","chall-i2.pcap","chall-i3.pcap"]
entries = []
for fname in files:
    cmd = [
        "tshark","-r",fname,
        "-T","fields",
        "-E","separator=,",
        "-E","quote=d",
        "-e","frame.time_epoch",
        "-e","ip.src",
        "-e","tcp.srcport",
        "-e","tcp.payload"
    ]
    res = subprocess.run(cmd, capture_output=True, text=True, check=True)
    for line in res.stdout.splitlines():
        parts = [p.strip("\"") for p in line.split(",")]
        if len(parts) < 4:
            continue
        t, ip, sport, payload = parts
        if not payload or sport != "80":
            continue
        payload = payload.replace(":","")
        if not payload:
            continue
        try:
            b = bytes.fromhex(payload)
        except ValueError:
            continue
        entries.append((float(t), b))
entries.sort(key=lambda x: x[0])
combined = b"".join(b for _, b in entries)
Path("combined_http.bin").write_bytes(combined)
header_end = combined.find(b"\r\n\r\n")
if header_end == -1:
    raise SystemExit("No HTTP header found")
body = combined[header_end+4:]
Path("response_body.bin").write_bytes(body)
print("combined bytes", len(combined))
print("body bytes", len(body))
