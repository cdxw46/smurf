import struct
import sys

def get_apk_signing_block(apk_path):
    with open(apk_path, 'rb') as f:
        f.seek(0, 2)
        file_size = f.tell()
        
        # Find EOCD (End of Central Directory)
        # Minimal size of EOCD is 22 bytes.
        # Signature: 0x06054b50
        # We scan from end.
        
        scan_limit = min(file_size, 65535 + 22)
        f.seek(file_size - scan_limit)
        data = f.read(scan_limit)
        
        eocd_idx = -1
        for i in range(len(data) - 22, -1, -1):
            if data[i:i+4] == b'\x50\x4b\x05\x06':
                eocd_idx = i
                break
        
        if eocd_idx == -1:
            print("EOCD not found")
            return None
            
        # Offset of CD is at eocd + 16 (4 bytes)
        eocd_offset_in_file = file_size - scan_limit + eocd_idx
        f.seek(eocd_offset_in_file + 16)
        cd_offset = struct.unpack('<I', f.read(4))[0]
        
        # APK Signing Block is just before CD.
        # Structure:
        # Size (8 bytes)
        # ID-Value Pairs
        # Size (8 bytes)
        # Magic (16 bytes): "APK Sig Block 42"
        
        f.seek(cd_offset - 16)
        magic = f.read(16)
        if magic != b'APK Sig Block 42':
            print("Magic not found at expected location")
            return None
            
        f.seek(cd_offset - 24)
        block_size = struct.unpack('<Q', f.read(8))[0]
        
        block_start = cd_offset - block_size - 8
        f.seek(block_start)
        
        # Verify size again
        size2 = struct.unpack('<Q', f.read(8))[0]
        if size2 != block_size:
            print("Block size mismatch")
            return None
            
        return f.read(block_size) # Read payload (ID-Value pairs)

def parse_block(block):
    # Block format: sequence of ID-Value pairs.
    # len (8 bytes), ID (4 bytes), Value (len - 4 bytes)
    pos = 0
    while pos < len(block):
        if pos + 8 > len(block):
            break
        pair_len = struct.unpack('<Q', block[pos:pos+8])[0]
        pos += 8
        if pos + 4 > len(block):
            break
        pair_id = struct.unpack('<I', block[pos:pos+4])[0]
        
        value_len = pair_len - 4
        value = block[pos+4 : pos+4+int(value_len)]
        
        print(f"Found Pair ID: {hex(pair_id)}")
        
        if pair_id == 0x7109871a: # v2 Signature Scheme
            print("Found v2 Signature Block")
            extract_certs(value)
        
        pos += 4 + int(value_len)

def extract_certs(v2_block):
    # v2 Block format:
    # Sequence of length-prefixed signers.
    try:
        # Using simple search for X.509 header instead of full parsing
        # X.509 usually starts with 0x30 0x82 ...
        # Sequence tag 0x30
        import re
        # Basic PEM header pattern in binary? No, it's DER.
        # Look for common object identifiers or structure.
        # Actually, just dumping strings might be easier, but let's try to find the cert structure.
        # It contains the public key.
        
        # We will convert the whole block to base64 and print it, user can decode.
        # OR better, just look for the Public Key Modulus start?
        pass
    except:
        pass
        
    # Brute force search for "30 82" (Sequence) which usually starts a Cert
    idx = 0
    found_count = 0
    while idx < len(v2_block):
        # Heuristic for X.509 cert start: 30 82 ?? ?? 30 82
        if v2_block[idx] == 0x30 and v2_block[idx+1] == 0x82:
            # Likely start of a sequence
            # Check if it looks like a cert (contains params)
            # Let's just try to dump it as PEM
            cert_len = struct.unpack('>H', v2_block[idx+2:idx+4])[0]
            if cert_len > 100 and cert_len < 5000:
                candidate = v2_block[idx : idx + 4 + cert_len]
                print(f"--- Possible Cert Found ({len(candidate)} bytes) ---")
                import base64
                b64 = base64.b64encode(candidate).decode()
                print("-----BEGIN CERTIFICATE-----")
                for i in range(0, len(b64), 64):
                    print(b64[i:i+64])
                print("-----END CERTIFICATE-----")
                found_count += 1
        idx += 1

block = get_apk_signing_block('celestial_scribe.apk')
if block:
    print("APK Signing Block found.")
    parse_block(block)
else:
    print("No APK Signing Block found.")
