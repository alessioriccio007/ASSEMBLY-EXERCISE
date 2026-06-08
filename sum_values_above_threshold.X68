        ORG $500
DIM         DC.W 5
SOGLIA      DC.W 3
V1          DC.W 1,5,3,2,6
        ORG $1000
START:
        LEA V1,A0
        MOVE.W SOGLIA,D1
        MOVE.W DIM,D2
        CLR.W D0
LOOP:
        CMP.W #1,D2
        BLT.W FINE
        MOVE.W (A0)+,D3
        CMP.W D1,D3
        BGT SOMMA
        BRA CONTINUA
SOMMA:
        ADD.W D3,D0
        
        
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
