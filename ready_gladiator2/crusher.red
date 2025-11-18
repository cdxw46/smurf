;redcode-94
;name GateCrusher
;author GPT-5.1 Codex
;assert 1

org start

start   spl fast_even
        spl fast_odd
        spl slow_one
        spl slow_two
        jmp fast_even

fast_even
        add #2, ptr_fe
        mov bomb, @ptr_fe
        jmp fast_even
ptr_fe  dat #0, #0

fast_odd
        add #2, ptr_fo
        mov bomb, @ptr_fo
        jmp fast_odd
ptr_fo  dat #1, #1

slow_one
        add #2667, ptr_s1
        mov bomb, @ptr_s1
        jmp slow_one
ptr_s1  dat #0, #0

slow_two
        add #2667, ptr_s2
        mov bomb, @ptr_s2
        jmp slow_two
ptr_s2  dat #1333, #1333

bomb    dat #0, #0
end start
