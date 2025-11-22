import re
from collections import Counter

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

strings = list(get_strings(data))
candidates = []
for s in strings:
    if len(s) == 11 and re.match(r'^[a-zA-Z0-9_.-]+$', s):
        candidates.append(s)

counts = Counter(candidates)
unique_candidates = [c for c, n in counts.items() if n == 1] # Solo aparecen 1 vez? No necesariamente.
# Mejor veamos todos los candidatos ordenados.

# Filtramos blacklist
blacklist = ["kernel32.dll", "user32.dll", "ws2_32.dll", "advapi32.dll", "shell32.dll", "ntdll.dll", "ole32.dll", "netapi32.dll", "gdi32.dll", "winmm.dll", "crypt32.dll", "mswsock.dll", "secur32.dll", "userenv.dll", "version.dll", "iphlpapi.dll", "setupapi.dll", "wintrust.dll", "wtsapi32.dll", "psapi.dll", "dwmapi.dll", "dnsapi.dll", "wininet.dll", "comctl32.dll", "mpr.dll", "shlwapi.dll", "urlmon.dll", "imm32.dll", "uxtheme.dll", "avicap32.dll", "avifil32.dll", "msacm32.dll", "msvfw32.dll", "winspool.drv", "comdlg32.dll", "oleaut32.dll", "uuid.dll", "rpcrt4.dll", "opengl32.dll", "glu32.dll", "win32spl.dll", "VirtualFree", "ExitProcess", "CloseHandle", "GetFileType", "SyscallConn", "SetDeadline", "WriteString"]

final_list = []
for c in candidates:
    if c in blacklist: continue
    if c.startswith("runtime") or c.startswith("type.") or c.startswith("go."): continue
    if "Error" in c or "Exception" in c: continue
    final_list.append(c)

print(sorted(list(set(final_list))))
