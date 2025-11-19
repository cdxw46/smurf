set pagination off
break *0x56555978
commands
silent
set  = 
set  =  - 0xc
set  = *(unsigned int *)
x/32bx 
quit
y
end
run
