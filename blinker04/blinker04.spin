
PUB main
    cognew(@cog_zero,0)
    cognew(@cog_one,0)
DAT

org 0
cog_zero
    mov dira,:pin
    mov :ra,cnt
    add :ra,:start
:top
    mov outa,:pin
    waitcnt :ra,:bdel
    mov outa,#0
    waitcnt :ra,:adel
    jmp #:top

:pin   long $00008000
:ra long 0
:adel long  $100000
:bdel long  $700000
:start long $100000

org 0
cog_one
    mov dira,:pin
    mov :ra,cnt
    add :ra,:start
:top
    mov outa,:pin
    waitcnt :ra,:bdel
    mov outa,#0
    waitcnt :ra,:adel
    jmp #:top

:pin   long $00008000
:ra long 0
:adel long  $100000
:bdel long  $700000
:start long $500000



