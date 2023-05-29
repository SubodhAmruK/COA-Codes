;COPY CHARACTERS

DATA SEGMENT 100h
    msg DB "SRM AP"
    count EQU ($-msg)
ENDS
CODE SEGMENT
    ASSUME DS:DATA,CS:CODE,ES:DATA
START:
    mov ax,DATA
    mov ds,ax
    mov es,ax
    lea si,msg
    mov di,count+2
    cld
    rep movsb
ENDS
END START