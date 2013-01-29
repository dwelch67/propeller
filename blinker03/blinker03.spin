
PUB main
    cognew(@cog_zero,0)
    cognew(@cog_one,0)
DAT

org 0
cog_zero
    mov dira,:pin
:top
    mov :count,cnt
    shr :count,#7
    and :count,:pin
    mov outa,:count
    jmp #:top

:pin   long $00008000
:count long 0

org 0
cog_one
    mov dira,:pin
:top
    mov :count,cnt
    shr :count,#10
    and :count,:pin
    mov outa,:count
    jmp #:top

:pin   long $00008000
:count long 0



