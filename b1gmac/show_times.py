import zipfile, datetime

def filetime_to_dt(ft):
    us = ft / 10
    return datetime.datetime(1601,1,1) + datetime.timedelta(microseconds=us)

with zipfile.ZipFile("b1g_mac.zip", "r") as z:
    for info in z.infolist():
        if not info.filename.startswith("test/") or not info.filename.endswith(".bmp"):
            continue
        data = info.extra
        idx = 0
        m = a = c = None
        while idx + 4 <= len(data):
            header_id = int.from_bytes(data[idx:idx+2], "little")
            data_size = int.from_bytes(data[idx+2:idx+4], "little")
            idx += 4
            chunk = data[idx:idx+data_size]
            idx += data_size
            if header_id == 0x000a and len(chunk) >= 32:
                tag = int.from_bytes(chunk[4:6], "little")
                size = int.from_bytes(chunk[6:8], "little")
                sub = chunk[8:8+size]
                if tag == 1 and len(sub) >= 24:
                    m = int.from_bytes(sub[0:8], "little")
                    a = int.from_bytes(sub[8:16], "little")
                    c = int.from_bytes(sub[16:24], "little")
        if m is None:
            continue
        def fmt(ft):
            return filetime_to_dt(ft).strftime("%Y-%m-%d %H:%M:%S")
        print(f"{info.filename}: m={fmt(m)} a={fmt(a)} c={fmt(c)}")
