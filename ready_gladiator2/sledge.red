;redcode-94
;name Sledgehammer
;author GPT-5.1 Codex
;assert 1

step    equ 2667

        org start

start   spl bomber
        spl bomber
        spl bomber
        spl bomber
        spl bomber
        jmp bomber

bomber  add #step, ptr
        mov bomb, @ptr
        jmp bomber

ptr     dat #0, #0
bomb    dat #0, #0
end
