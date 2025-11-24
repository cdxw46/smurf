from pwn import *
context.binary = ELF("./zero_to_hero", checksec=False)
ld = "./ld-2.29.so"
libc_path = "./libc.so.6"

def start():
    return process([ld, context.binary.path], env={"LD_PRELOAD": libc_path})

p = start()
p.sendlineafter(b"hero?\n", b"y")

def add(size, data):
    p.sendlineafter(b"> ", b"1")
    p.sendlineafter(b"> ", str(size).encode())
    p.sendafter(b"> ", data)

def remove(idx):
    p.sendlineafter(b"> ", b"2")
    p.sendlineafter(b"> ", str(idx).encode())

def exit_menu():
    p.sendlineafter(b"> ", b"3")

add(0x80, b"A"*0x80)
remove(0)
add(0x80, b"B"*0x80)
remove(0)
exit_menu()
p.wait()
print("proc exit status", p.poll())
