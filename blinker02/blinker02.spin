
PUB main
    cognew(@cog_zero,0)
    cognew(@cog_one,0)
    cognew(@cog_two,0)

DAT

org 0
cog_zero

zero_top
    wrlong vzero,#100

    mov czero,dzero
zero_a
    djnz czero,#zero_a

    mov czero,dzero
zero_b
    djnz czero,#zero_b

    jmp #zero_top

dzero long $80000
czero long 0
vzero long $00008000

DAT

org 0
cog_one
one_top
    mov cone,done
one_a
    djnz cone,#one_a

    wrlong vone,#100

    mov cone,done
one_b
    djnz cone,#one_b

    jmp #one_top


vone long $00000000
done long $80000
cone long 0


DAT

org 0
cog_two
    mov dira,ptwo
    wrlong vtwo,#100
two_top
    rdlong vtwo,#100
    mov outa,vtwo
    jmp #two_top

ptwo long $00008000
vtwo long 0



