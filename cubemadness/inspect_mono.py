from pathlib import Path
import UnityPy

TARGET = Path("CubeMadness2") / "HackTheBox CubeMadness2_Data" / "level0"

env = UnityPy.load(str(TARGET))

for obj in env.objects:
    if obj.type.name != "MonoBehaviour":
        continue
    try:
        data = obj.read()
    except Exception:
        continue
    script_name = None
    try:
        script = data.m_Script
        if script:
            script_name = script.get_obj().read().name
    except Exception:
        pass
    name = getattr(data, "name", getattr(data, "m_Name", ""))
    tree = None
    try:
        tree = obj.read_typetree()
    except Exception:
        pass
    print("--- MonoBehaviour ---")
    print(f"Object name: {name}")
    print(f"Script: {script_name}")
    if tree:
        for key, value in tree.items():
            if isinstance(value, (str, int, float, bool)):
                print(f"  {key}: {value}")
            else:
                print(f"  {key}: {type(value)}")
