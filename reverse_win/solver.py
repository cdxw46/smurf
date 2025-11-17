#!/usr/bin/env python3
import os
import sys
import time
import pexpect
import subprocess

WORKDIR = "/workspace/reverse_win"
WINEPREFIX = os.path.join(WORKDIR, "wine32prefix")
RUN_CMD = (
    f"cd {WORKDIR} && WINEPREFIX={WINEPREFIX} xvfb-run -a wine win-exec-1.exe"
)

ADDR_KEY = 0x0047C280


def list_pids():
    out = subprocess.check_output(
        ["timeout", "10s", "pgrep", "-a", "-f", "win-exec-1.exe"],
        text=True,
    ).strip()
    print(f"[+] Procesos wine:\n{out}", flush=True)
    return [line for line in out.splitlines() if line.strip()]


def find_pid():
    lines = list_pids()
    filtered = []
    for line in lines:
        if "pgrep" in line or "timeout" in line:
            continue
        if "xvfb-run" in line:
            continue
        if "[win-exec-1.exe]" in line:
            continue
        if "win-exec-1.exe" not in line:
            continue
        filtered.append(line)
    if not filtered:
        raise RuntimeError("No hay proceso de win-exec-1.exe activo")
    pids = [int(line.split()[0]) for line in filtered]
    return max(pids)


def read_c_string(pid, addr):
    addr_hex = f"0x{addr:08x}"
    cmd = [
        "timeout",
        "10s",
        "gdb",
        "-q",
        "-p",
        str(pid),
        "-batch",
        "-ex",
        f"x/s {addr_hex}",
        "-ex",
        "detach",
        "-ex",
        "quit",
    ]
    out = subprocess.check_output(cmd, stderr=subprocess.STDOUT, text=True)
    for line in out.splitlines():
        line = line.strip()
        if line.startswith(addr_hex) or line.startswith(hex(addr)):
            parts = line.split("\"", 2)
            if len(parts) >= 2:
                return parts[1]
    raise RuntimeError(f"No se pudo leer la cadena en {addr_hex}: {out}")


def main():
    child = pexpect.spawnu(
        "/bin/bash",
        ["-lc", RUN_CMD],
        timeout=30,
    )
    child.logfile_read = sys.stdout
    print("[+] Esperando el prompt inicial...", flush=True)
    child.expect("Input a number between 1 and 5 digits:")
    number = "12345"
    print(f"[+] Enviando numero {number}", flush=True)
    child.send(number + "\r\n")
    child.expect("Enter the correct key to get the access codes:")
    print("[+] Prompt de la clave detectado", flush=True)
    time.sleep(1)
    pid = find_pid()
    print(f"[+] PID elegido: {pid}", flush=True)
    key = read_c_string(pid, ADDR_KEY)
    print(f"[+] Clave obtenida: {key}", flush=True)
    child.send(key + "\r\n")
    child.expect("Correct input. Printing flag:")
    child.expect(r"PICOCTF\{.*\}")
    flag_line = child.after.strip()
    print(flag_line)
    child.expect(pexpect.EOF)


if __name__ == "__main__":
    main()
