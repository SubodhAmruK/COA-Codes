;PRINTING 0 TO 9

DATA SEGMENT
    a db 0,1,2,3,4,5,6,7,8,9
    siz EQU ($-a)   
ENDS
CODE SEGMENT
    ASSUME DS:DATA CS:CODE
START:
    MOV AX,DATA
    MOV DS,AX
    mov cx,siz
    mov si,0
    loop1:
    mov al,a[si]  
    add al,48
    mov dl,al
    
    mov ah,2h
    int 21h
    INC si
    loop loop1
ENDS
END START

