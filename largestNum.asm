;LARGEST NUMBER
DATA SEGMENT
    ARRAY db 1,2,9,4,5,6,7,8,3 
    SIZ EQU ($ - ARRAY)
    MAX db ? 
    MSG db "LARGEST IS $"
ENDS

CODE SEGMENT 
    ASSUME DS:DATA CS:CODE
START:
    MOV AX,DATA
    MOV DS,AX 
    
    
    LEA SI,ARRAY
    MOV AL,ARRAY[si]
    MOV BL,SIZ
    
    COMP:INC SI
          CMP AL,ARRAY[SI]
          JGE CHECK
          MOV AL,ARRAY[SI] 
          
    CHECK:DEC BL
          JNZ COMP 
             
             
    MOV MAX,AL
    LEA DX, MSG
    MOV AH, 9
    INT 21h
          
    MOV DL,MAX
    ADD DL,48
    MOV AH,2h
    INT 21h

ENDS     
END START

