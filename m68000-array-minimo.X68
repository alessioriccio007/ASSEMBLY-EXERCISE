        ORG $500
V1          DC.W 2,5,3,1,6
DIM         DC.W 5
        ORG $1000
START:
        LEA V1,A0
        MOVE.W (A0)+,D3
        MOVE.W DIM,D1
        MOVE.W #2,D2
        MOVE.W D3,D0
LOOP:
        CMP.W D2,D1
        BLT FINE
        MOVE.W (A0)+,D3
        CMP.W D0,D3
        BLT MINIMO
        BRA CONTINUA
MINIMO:
        MOVE.W D3,D0
CONTINUA:
        SUB.W #1,D1
        BNE LOOP
FINE:
        SIMHALT 
        END START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
