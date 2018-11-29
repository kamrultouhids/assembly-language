org  100h
 
COMMENT @ taking 1st input from user @
mov ah,1       
int 21h
mov bh,al

COMMENT @ taking 2nd input from user @
mov ah,1      
int 21h
mov bl,al


COMMENT @ display 1st value @
mov ah,2
mov dl,bh
int 21h
 
 
COMMENT @ display 2nd value @ 

mov ah,2
mov dl,bl
int 21h