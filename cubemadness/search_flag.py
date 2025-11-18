import re
from pathlib import Path
import UnityPy

data_dir = Path("CubeMadness2") / "HackTheBox CubeMadness2_Data"
pattern = re.compile(r"HTB\{[^}]+\}")

candidates = []

for path in sorted(data_dir.rglob("*")):
    if not path.is_file():
        continue
    if path.suffix not in {".assets", ".resS", ".resource", ""}:
        continue
    try:
        env = UnityPy.load(path)
    except Exception:
        continue
    for obj in env.objects:
        try:
            data = obj.read()
        except Exception:
            continue
        text = None
        if data.type == "TextAsset" and hasattr(data, "text"):
            text = data.text
        elif data.type == "MonoBehaviour" and hasattr(data, "raw_data"):
            try:
                text = data.raw_data.decode(errors="ignore")
            except Exception:
                continue
        if not text:
            continue
        for match in pattern.findall(text):
            candidates.append((path.name, obj.type.name, match))

if candidates:
    for path_name, obj_type, match in candidates:
        print(f"{path_name}: {obj_type}: {match}")
else:
    print("No se encontraron flags")
