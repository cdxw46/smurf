from PIL import Image
import sys
path = sys.argv[1]
img = Image.open(path).convert("L")
img = img.resize((80, 40))
chars = "@%#*+=-:. "
for y in range(img.height):
    line = "".join(chars[int(img.getpixel((x, y)) / 255 * (len(chars)-1))] for x in range(img.width))
    print(line)
