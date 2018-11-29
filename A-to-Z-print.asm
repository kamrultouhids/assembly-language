org 100h

; add your code here
.DATA

.CODE
MAIN PROC   

MOV AX,@DATA
MOV DS,AX


MOV CX,26
MOV AH,2
MOV DL,'A'



TOP:

   INT 21H 
   INC DL
   dec cx
   JNZ TOP
   
  
                     



ret



