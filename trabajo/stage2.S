    .intel_syntax noprefix
    .section .text
    .global _start
_start:
    lea rdi, [rip+path]
    xor esi, esi
    xor edx, edx
    mov eax, 2
    syscall

    mov edi, eax
    lea rsi, [rip+buf]
    mov edx, 0x80
    xor eax, eax
    syscall

    mov edx, eax
    mov edi, 1
    lea rsi, [rip+buf]
    mov eax, 1
    syscall

    xor edi, edi
    mov eax, 60
    syscall

path:
    .ascii "./door\0"
    .balign 8
buf:
    .space 0x80
