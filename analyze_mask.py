key = "Software\\Microsoft\\Windows\\CurrentVersion\\RUN"
print(f"Found key in bin: {key}")
print(f"Length: {len(key)}")
expected_mask = "****_*******_****\\********\\*********\\*******\\**************\\***\\***********"
print(f"Expected mask: {expected_mask}")
print(f"Expected length: {len(expected_mask)}")

# Desglose de la mascara:
# ****_*******_**** (17 chars) -> HKEY_CURRENT_USER
# \ (1 char)
# ******** (8 chars) -> Software
# \ (1 char)
# ********* (9 chars) -> Microsoft
# \ (1 char)
# ******* (7 chars) -> Windows
# \ (1 char)
# ************** (14 chars) -> CurrentVersion
# \ (1 char)
# *** (3 chars) -> Run (o RUN)
# \ (1 char)
# *********** (11 chars) -> EL NOMBRE DEL VALOR

# Que valor tiene 11 caracteres?
# secretPictures.exe -> 18 chars
# secretPictures -> 14 chars
# Systemlogs -> 10 chars
# swchost.exe -> 11 chars? 
# svchost.exe -> 11 chars

print("\nCandidates for 11 chars value:")
candidates = ["svchost.exe", "taskmgr.exe", "explorer.exe", "chrome.exe", "firefox.exe", "powershell"]
for c in candidates:
    if len(c) == 11:
        print(c)

# Busquemos en los strings palabras de 11 caracteres que parezcan nombres de ejecutables o procesos
