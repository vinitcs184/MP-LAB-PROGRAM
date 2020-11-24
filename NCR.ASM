
.MODEL SMALL

.DATA
N DB 05H
R DB 00H
NCRVAL DW 01H DUP(?)

.CODE
START : MOV AX, @DATA
        MOV DS, AX

        MOV CL, R           
        MOV CH, N           
        XOR AX, AX          
        CALL NCR
        MOV [NCRVAL], AX
        MOV AH, 4CH
        INT 21H

NCR PROC NEAR
        CMP CH, CL
        JE EQUAL               
        JC FINISH                
        CMP CL, 01H             
        JE NEXT
        CMP CL,00H
        JE EQUAL
        DEC CH  
        PUSH CX 
        CALL NCR
        POP CX
        DEC CL
        CALL NCR
        RET
NEXT :  XOR BX, BX       
        MOV BL, CH       
        ADD AX, BX       
RET
EQUAL : ADD AX, 01H   ;AX=01H
FINISH :RET
NCR ENDP

END START