from pwn import *
elf = ELF("./horse")
rop = ROP(elf)
print("pop rdi", hex(rop.find_gadget(["pop rdi","ret"]).address))
print("pop rsi", rop.find_gadget(["pop rsi","ret"]))
print("pop rsi; pop r15; ret", rop.find_gadget(["pop rsi","pop r15","ret"]))
print("pop rdx", rop.find_gadget(["pop rdx","ret"]))
print("pop rdx; pop rbx; ret", rop.find_gadget(["pop rdx","pop rbx","ret"]))
