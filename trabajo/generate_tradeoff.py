import struct
from pathlib import Path

WIDTH = 76
HEIGHT = 24


def sprite_from_rows(rows):
    height = len(rows)
    width = len(rows[0]) if rows else 0
    for row in rows:
        if len(row) != width:
            raise ValueError("Row width mismatch", rows)
    data = "".join(rows).encode("ascii")
    return width, height, data


sprites = {
    0: sprite_from_rows(["-"]),
    1: sprite_from_rows(["."] + ["|"] * 22 + ["'"]),
    2: sprite_from_rows([
        "  ___ ",
        " / __|",
        "| (__ ",
        " \\___|",
    ]),
    3: sprite_from_rows([
        " ___ ",
        "|_ _|",
        " | | ",
        " | | ",
        "|___|",
    ]),
    4: sprite_from_rows([
        " __  __ ",
        "|  \\/  |",
        "| |\\/| |",
        "| |  | |",
        "|_|  |_|",
    ]),
    5: sprite_from_rows([
        "  ____ ",
        " / ___|",
        "| |  _ ",
        "| |_| |",
        " \\____|",
    ]),
}


placements = [
    {"sprite_id": 0, "color": (255, 255, 255), "x": 1, "y": 0, "rx": 74, "ry": 1, "transparent": ord(" ")},
    {"sprite_id": 0, "color": (255, 255, 255), "x": 1, "y": 23, "rx": 74, "ry": 1, "transparent": ord(" ")},
    {"sprite_id": 1, "color": (255, 255, 255), "x": 0, "y": 0, "rx": 1, "ry": 1, "transparent": ord(" ")},
    {"sprite_id": 1, "color": (255, 255, 255), "x": 75, "y": 0, "rx": 1, "ry": 1, "transparent": ord(" ")},
    {"sprite_id": 2, "color": (255, 0, 0), "x": 23, "y": 10, "rx": 1, "ry": 1, "transparent": ord(" ")},
    {"sprite_id": 3, "color": (0, 255, 0), "x": 30, "y": 9, "rx": 1, "ry": 1, "transparent": ord(" ")},
    {"sprite_id": 4, "color": (0, 0, 255), "x": 36, "y": 9, "rx": 1, "ry": 1, "transparent": ord(" ")},
    {"sprite_id": 5, "color": (128, 128, 128), "x": 45, "y": 9, "rx": 1, "ry": 1, "transparent": ord(" ")},
]  # fmt: skip


def main():
    output_path = Path("solution_tradeoff.cimg")
    directives = len(sprites) + len(placements)
    with output_path.open("wb") as f:
        f.write(b"cIMG")
        f.write(struct.pack("<H", 4))
        f.write(bytes([WIDTH, HEIGHT]))
        f.write(struct.pack("<I", directives))

        for sprite_id in sorted(sprites):
            width, height, data = sprites[sprite_id]
            f.write(struct.pack("<H", 3))
            f.write(bytes([sprite_id, width, height]))
            f.write(data)

        for placement in placements:
            sprite_id = placement["sprite_id"]
            r, g, b = placement["color"]
            payload = bytes([
                sprite_id,
                r,
                g,
                b,
                placement["x"],
                placement["y"],
                placement["rx"],
                placement["ry"],
                placement["transparent"],
            ])
            f.write(struct.pack("<H", 4))
            f.write(payload)

    print(f"Wrote {output_path} with {directives} directives.")


if __name__ == "__main__":
    main()
