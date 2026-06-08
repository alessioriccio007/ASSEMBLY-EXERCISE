        ORG $500
V1          DC.W 2,4,5
V2          DC.W 3,5,2
V3          DS.W 3
DIM         DC.W 3
        ORG $1000
START:
        LEA V1,A0
        LEA V2,A1
        LEA V3,A4
        MOVE.W DIM,D2
        CLR.W D3
LOOP:
        CMP.W #1,D2
        BLT LOOPPREP
        MOVE.W (A0)+,D0
        MOVE.W (A1)+,D1
        MOVE.W D0,-2(A1)
        MOVE.W D1,-2(A0)
        SUB #1,D2
        BRA LOOP
LOOPPREP:
        LEA V1,A0
        LEA V2,A1
        LEA V3,A4

LOOP2:
        CMP.W #3,D3
        BGE FINE
        MOVE.W (A0)+,D0
        ADD.W (A1)+,D0
        MOVE.W D0,(A4)+
        ADDQ.W #1,D3
        BRA LOOP2
FINE:
        SIMHALT
        END START
        
        

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
