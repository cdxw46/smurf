;redcode-94
;name OctoKill
;author GPT-5.1 Codex
;assert 1

step    equ 8

        org start

start   spl bomber0
        spl bomber1
        spl bomber2
        spl bomber3
        spl bomber4
        spl bomber5
        spl bomber6
        spl bomber7
        jmp bomber0

bomber0 add #step, ptr0
        mov bomb, @ptr0
        jmp bomber0
ptr0    dat #0, #0

bomber1 add #step, ptr1
        mov bomb, @ptr1
        jmp bomber1
ptr1    dat #1, #1

bomber2 add #step, ptr2
        mov bomb, @ptr2
        jmp bomber2
ptr2    dat #2, #2

bomber3 add #step, ptr3
        mov bomb, @ptr3
        jmp bomber3
ptr3    dat #3, #3

bomber4 add #step, ptr4
        mov bomb, @ptr4
        jmp bomber4
ptr4    dat #4, #4

bomber5 add #step, ptr5
        mov bomb, @ptr5
        jmp bomber5
ptr5    dat #5, #5

bomber6 add #step, ptr6
        mov bomb, @ptr6
        jmp bomber6
ptr6    dat #6, #6

bomber7 add #step, ptr7
        mov bomb, @ptr7
        jmp bomber7
ptr7    dat #7, #7

bomb    dat #0, #0
end
