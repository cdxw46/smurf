from pwn import *
elf = ELF("./vuln")
rop = ROP(elf)
for gadget in rop.gadgets.values():
    if gadget.insns == ["pop eax", "ret"]:
        print("pop eax", hex(gadget.address))
    if gadget.insns == ["pop ebx", "ret"]:
        print("pop ebx", hex(gadget.address))
    if gadget.insns == ["pop ecx", "ret"]:
        print("pop ecx", hex(gadget.address))
    if gadget.insns == ["pop edx", "ret"]:
        print("pop edx", hex(gadget.address))
    if gadget.insns == ["int 0x80"]:
        print("int80", hex(gadget.address))
    if gadget.insns == ["pop eax", "pop edx", "pop ebx", "ret"]:
        print("combo", hex(gadget.address))
