        ORG $500
DIM1    DC.W 5
V1      DC.W 1,5,3,2,6
        ORG $1000

START:
        LEA V1,A0
        LEA DIM1, A1
        MOVE.W (A0)+,D3
        MOVE.W D3,D0
        MOVE.W (A1),D1
        

LOOP:
        CMP.W #2,D1
        BLT FINE
        MOVE.W (A0)+,D3
        CMP.W D0,D3
        BGT MOVEG
        BRA CONTINUA
MOVEG:
        MOVE.W D3,D0
CONTINUA:
        SUB.W #1,D1
        BRA LOOP


FINE:
        SIMHALT
        END START       
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
