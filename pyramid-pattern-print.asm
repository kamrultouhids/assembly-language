org 100h

.DATA
msg DB 10,13,'It is a  even number.$',10,13
msg1 DB 10,13,'It is a  odd number.$',10,13
input DB 10,13,'Enter number:$'
; add your code here

.CODE
MAIN PROC   


MOV bl,1
TOP:
   mov bh,1
   top1:
    mov dl,42
    mov ah,2
    int 21h
    inc bh
    cmp bh,bl
    jle top1
   
   MOV AH,2
   MOV DL,0DH
   INT 21H   
   MOV DL,0AH
   INT 21H
        
   inc bl
   cmp bl,5
   jle TOP
   
ret




