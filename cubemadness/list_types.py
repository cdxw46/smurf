from collections import Counter
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
    counter = Counter()
    env = UnityPy.load(str(path))
    for obj in env.objects:
        counter[obj.type.name] += 1
    print(f"=== {rel} ===")
    for name, count in counter.most_common():
        print(f"{name}: {count}")
