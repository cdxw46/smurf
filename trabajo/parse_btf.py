import struct
import sys

BTF_KIND_UNKN = 0
BTF_KIND_INT = 1
BTF_KIND_PTR = 2
BTF_KIND_ARRAY = 3
BTF_KIND_STRUCT = 4
BTF_KIND_UNION = 5
BTF_KIND_ENUM = 6
BTF_KIND_FWD = 7
BTF_KIND_TYPEDEF = 8
BTF_KIND_VOLATILE = 9
BTF_KIND_CONST = 10
BTF_KIND_RESTRICT = 11
BTF_KIND_FUNC = 12
BTF_KIND_FUNC_PROTO = 13
BTF_KIND_VAR = 14
BTF_KIND_DATASEC = 15
BTF_KIND_FLOAT = 16
BTF_KIND_DECL_TAG = 17
BTF_KIND_TYPE_TAG = 18
BTF_KIND_ENUM64 = 19


def read_header(data: bytes) -> dict:
    magic, version, flags, hdr_len, type_off, type_len, str_off, str_len = struct.unpack_from(
        "<HBBIIIII", data, 0
    )
    if magic != 0xEB9F:
        raise ValueError(f"Invalid BTF magic: {magic:#x}")
    return {
        "version": version,
        "flags": flags,
        "hdr_len": hdr_len,
        "type_off": type_off,
        "type_len": type_len,
        "str_off": str_off,
        "str_len": str_len,
    }


def get_str(strs: bytes, off: int) -> str:
    if off == 0:
        return ""
    end = strs.find(b"\x00", off)
    if end == -1:
        end = len(strs)
    return strs[off:end].decode("utf-8", errors="replace")


def parse_types(data: bytes, header: dict):
    base = header["hdr_len"]
    type_sec = data[
        base + header["type_off"] : base + header["type_off"] + header["type_len"]
    ]
    str_sec = data[
        base + header["str_off"] : base + header["str_off"] + header["str_len"]
    ]

    types = []
    pos = 0
    type_id = 1

    while pos < len(type_sec):
        name_off, info, size_or_type = struct.unpack_from("<III", type_sec, pos)
        pos += 12
        vlen = info & 0xFFFF
        kind = (info >> 24) & 0x1F
        kind_flag = (info >> 31) & 0x1
        entry = {
            "id": type_id,
            "name_off": name_off,
            "name": get_str(str_sec, name_off),
            "kind": kind,
            "kind_flag": kind_flag,
            "vlen": vlen,
            "size_or_type": size_or_type,
            "members": [],
            "data": None,
        }

        if kind == BTF_KIND_INT:
            entry["data"] = struct.unpack_from("<III", type_sec, pos)
            pos += 12
        elif kind == BTF_KIND_ARRAY:
            entry["data"] = struct.unpack_from("<III", type_sec, pos)
            pos += 12
        elif kind in (BTF_KIND_STRUCT, BTF_KIND_UNION):
            members = []
            for _ in range(vlen):
                m_name_off, m_type, m_offset = struct.unpack_from("<III", type_sec, pos)
                pos += 12
                members.append(
                    {
                        "name_off": m_name_off,
                        "name": get_str(str_sec, m_name_off),
                        "type": m_type,
                        "offset": m_offset,
                    }
                )
            entry["members"] = members
        elif kind == BTF_KIND_ENUM:
            members = []
            for _ in range(vlen):
                m_name_off, m_val = struct.unpack_from("<Ii", type_sec, pos)
                pos += 8
                members.append({"name": get_str(str_sec, m_name_off), "value": m_val})
            entry["members"] = members
        elif kind == BTF_KIND_ENUM64:
            members = []
            for _ in range(vlen):
                m_name_off, lo, hi = struct.unpack_from("<Iii", type_sec, pos)
                pos += 12
                members.append(
                    {
                        "name": get_str(str_sec, m_name_off),
                        "value": (hi << 32) | (lo & 0xFFFFFFFF),
                    }
                )
            entry["members"] = members
        elif kind == BTF_KIND_FUNC_PROTO:
            params = []
            for _ in range(vlen):
                p_name_off, p_type = struct.unpack_from("<II", type_sec, pos)
                pos += 8
                params.append({"name": get_str(str_sec, p_name_off), "type": p_type})
            entry["params"] = params
        elif kind == BTF_KIND_VAR:
            linkage, = struct.unpack_from("<I", type_sec, pos)
            pos += 4
            entry["data"] = linkage
        elif kind == BTF_KIND_DATASEC:
            entries = []
            for _ in range(vlen):
                sec_type, sec_offset, sec_size = struct.unpack_from(
                    "<III", type_sec, pos
                )
                pos += 12
                entries.append(
                    {"type": sec_type, "offset": sec_offset, "size": sec_size}
                )
            entry["data"] = entries
        elif kind == BTF_KIND_DECL_TAG:
            component_idx, = struct.unpack_from("<i", type_sec, pos)
            pos += 4
            entry["data"] = component_idx
        else:
            pass

        types.append(entry)
        type_id += 1

    return types, str_sec


def find_struct(types, name: str):
    for t in types:
        if t["kind"] == BTF_KIND_STRUCT and t["name"] == name:
            return t
    return None


def dump_struct(struct_type):
    print(f"struct {struct_type['name']} (size={struct_type['size_or_type']})")
    for m in struct_type["members"]:
        bit_offset = m["offset"]
        byte_offset = bit_offset // 8
        print(f"  +0x{byte_offset:03x} : {m['name']}")


if __name__ == "__main__":
    if len(sys.argv) < 3:
        print(f"Usage: {sys.argv[0]} <btf file> <struct name>")
        sys.exit(1)
    btf_path = sys.argv[1]
    struct_name = sys.argv[2]
    with open(btf_path, "rb") as f:
        data = f.read()
    header = read_header(data)
    types, _ = parse_types(data, header)
    target = find_struct(types, struct_name)
    if not target:
        print(f"Struct {struct_name} not found")
        sys.exit(1)
    dump_struct(target)
