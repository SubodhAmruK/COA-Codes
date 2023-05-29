;AVERAGE OF NUMBERS
DATA SEGMENT
     ARRAY DB 1,2,3,4,5,6,7,8,9
     SIZ EQU ($-ARRAY)
     MSG DB "AVERAGE = $"
ENDS

CODE SEGMENT 
    ASSUME DS:DATA CS:CODE
START:
      MOV AX,DATA
      MOV DS,AX

      LEA SI,ARRAY
       
      LEA DX,MSG
      MOV AH,9
      INT 21H

      MOV AX,00
      MOV BL,SIZ

      MOV CX,SIZ 
      LOOP1:
           ADD AL,ARRAY[SI]
           INC SI
      LOOP LOOP1

      DIV BL

      MOV DL,AL
      ADD DL,48
      MOV AH,2H
      INT 21H
     
ENDS
END START