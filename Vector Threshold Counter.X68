        ORG $500
V1          DC.W 1,5,3,2,6
DIM         DC.W 5
SOGLIA      DC.W 3
        ORG $1000
START:
        LEA V1,A0
        MOVE.W DIM,D2
        MOVE.W SOGLIA,D3
        CLR.W D0
LOOP:
        CMP.W #1,D2
        BLT FINE
        MOVE.W (A0)+,D1
        CMP.W D3,D1
        BGT ADD0
        BRA CONTINUA
ADD0:
        ADDQ.W #1,D0
CONTINUA:
        SUBQ.W #1,D2
        BRA LOOP
FINE:
        SIMHALT
        END START







*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
