DATA SEGMENT
    a db 2
    b db 3
ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

START: 
    
    MOV AX, DATA
    MOV DS, AX
    
    MOV AH, 0
    MOV AL, a
    MOV BL, b
    MOV BH, AL
    DIV BL
    CMP AH, 0
    JZ EXIT
    
    Loop1:
        MOV AH, 0
        MOV AL, BH
        ADD AL, a
        MOV BH, AL
        DIV BL
        CMP AH, 0
        JZ EXIT
    Loop Loop1
    
EXIT:
    MOV DL, BH
    ADD DL, 48
    MOV AH, 2H
    INT 21H
    
ENDS
END START
