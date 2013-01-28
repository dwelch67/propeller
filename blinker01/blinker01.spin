
PUB main
    coginit(0,@cog_zero,0)
DAT
cog_zero
    mov dira,Pin
top
    mov Count,Delay
    xor outa,Pin
middle
    djnz Count,#middle
    jmp #top

Pin     long $8000
Delay   long $80000
Count   long 0


