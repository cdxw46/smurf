.global _start
_start:
    mov x2, x0
    mov x0, #0
loop:
    ldr x3, [x2], #8
    add x0, x0, x3
    subs x1, x1, #1
    b.ne loop
