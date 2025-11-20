;redcode
;name Imp Killer
;assert 1
        org start
start   add #4, ptr
        mov bomb, @ptr
        jmp start
ptr     dat #0, #0
bomb    dat #0, #0
        end start
end
