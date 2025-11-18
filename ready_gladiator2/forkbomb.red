;redcode-94
;name ForkBomb
;author GPT-5.1 Codex
;assert 1

step    equ 2667

        org start

start   spl 1
        spl 1
        spl 1
        spl 1
        spl 1
        spl 1
        spl 1
        spl 1
        spl 1
        spl 1
        spl 1
        spl 1
clear   add #step, ptr
        mov bomb, @ptr
        jmp clear

ptr     dat #0, #0
bomb    dat #0, #0
end
