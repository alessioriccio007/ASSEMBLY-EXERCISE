        ORG $500
DIM       DC.W 5
V1        DC.W 1,5,3,2,6
V2        DS.W 5
        ORG $1000
START:
        LEA V1,A0
        LEA V2,A1
        MOVE.W DIM,D0
LOOP:
        CMP.W #1,D0
        BLT FINE
        MOVE.W (A0)+,D1
        MOVE.W D1,(A1)+
        SUBQ.W #1,D0
        BRA LOOP
FINE:
        SIMHALT
        END START
        
        




*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
