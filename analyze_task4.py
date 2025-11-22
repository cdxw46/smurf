import re

def get_strings(data, min_len=4):
    result = ""
    for b in data:
        if 32 <= b <= 126:
            result += chr(b)
        else:
            if len(result) >= min_len:
                yield result
            result = ""
    if len(result) >= min_len:
        yield result

try:
    with open("secretPictures.exe", "rb") as f:
        data = f.read()
except FileNotFoundError:
    print("File not found")
    exit(1)

print("Candidates for Task 4 (Registry Value Name) - 11 chars:")
candidates = set()
for s in get_strings(data):
    if len(s) == 11 and re.match(r'^[a-zA-Z0-9_.-]+$', s):
        candidates.add(s)

filtered_candidates = []
blacklist = ["kernel32.dll", "user32.dll", "ws2_32.dll", "advapi32.dll", "shell32.dll", "ntdll.dll", "ole32.dll", "netapi32.dll", "gdi32.dll", "winmm.dll", "crypt32.dll", "mswsock.dll", "secur32.dll", "userenv.dll", "version.dll", "iphlpapi.dll", "setupapi.dll", "wintrust.dll", "wtsapi32.dll", "psapi.dll", "dwmapi.dll", "dnsapi.dll", "wininet.dll", "comctl32.dll", "mpr.dll", "shlwapi.dll", "urlmon.dll", "imm32.dll", "uxtheme.dll", "avicap32.dll", "avifil32.dll", "msacm32.dll", "msvfw32.dll", "winspool.drv", "comdlg32.dll", "oleaut32.dll", "uuid.dll", "rpcrt4.dll", "opengl32.dll", "glu32.dll", "win32spl.dll"]

for c in candidates:
    if c.lower() in blacklist: continue
    if c.startswith("runtime") or c.startswith("type.") or c.startswith("go."): continue
    if "Error" in c or "Exception" in c: continue
    filtered_candidates.append(c)

print(sorted(filtered_candidates))
