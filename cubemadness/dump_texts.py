from pathlib import Path
import UnityPy

TARGETS = [
    "level0",
    "sharedassets0.assets",
    "globalgamemanagers.assets",
]

data_dir = Path("CubeMadness2") / "HackTheBox CubeMadness2_Data"

for rel in TARGETS:
    path = data_dir / rel
    if not path.exists():
        continue
    print(f"=== {rel} ===")
    env = UnityPy.load(str(path))
    for obj in env.objects:
        type_name = obj.type.name
        try:
            data = obj.read()
        except Exception as exc:
            continue
        if type_name == "TextAsset":
            text = data.text
            if text:
                print(f"TextAsset::{data.name} -> {text[:120]}")
        elif type_name == "MonoBehaviour" and hasattr(data, "text"):
            text = data.text
            if text:
                print(f"MonoBehaviour::{data.name} -> {text[:120]}")
