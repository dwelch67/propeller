
PUB main
    cognew(@cog_zero,0)
DAT

org 0
cog_zero
    mov dira,:pin
:top
    mov :count,cnt
    shr :count,#12
    and :count,:pin
    mov outa,:count
    jmp #:top

:pin   long $00008000
:count long 0
