import subprocess

def run_chain(max_iter=500):
    note_path = "note.txt"
    passes = ["snowflake"]
    outputs = []
    for i in range(max_iter):
        passwd = passes[-1]
        proc = subprocess.run(
            ["stegsnow", "-C", "-p", passwd, note_path],
            capture_output=True,
        )
        out = proc.stdout.decode("utf-8", errors="replace")
        err = proc.stderr.decode("utf-8", errors="replace")
        print(f"--- Iteration {i} ---")
        print(out)
        if proc.returncode != 0:
            print("Error:", err)
            break
        out_clean = out.rstrip("\n")
        outputs.append(out_clean)
        if "FLAG{" in out:
            print("Flag found at iteration", i)
            break
        if not out_clean.strip():
            print("Empty output; stopping")
            break
        passes.append(out_clean)
    return passes, outputs

if __name__ == "__main__":
    passes, outputs = run_chain(1000)
    print("Total outputs:", len(outputs))
