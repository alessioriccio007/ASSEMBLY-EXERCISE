      ORG $500
X     DC.W 3,5,2
      ORG $1000
START:
        LEA X,A0
        MOVE.W (A0)+,D3
        MOVE.W (A0)+,D1
        MOVE.W (A0),D2
        CMP.W D3,D1
        BGT.W CASED1
        CMP.W D3,D2
        BGT CASED2
        MOVE.W D3,D0
        BRA FINE
CASED1:
        CMP.W D1,D2
        BGT CASED2
        MOVE.W D1,D0
        BRA FINE
CASED2:
        MOVE.W D2,D0
        BRA FINE
FINE:
        SIMHALT 
        END START
 
        
        
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
