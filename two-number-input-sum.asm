org  100h
 
COMMENT @taking 1st input from user @
mov ah,1       
int 21h
mov bh,al

COMMENT @ taking 2nd input from user @
mov ah,1      
int 21h
mov bl,al


mov ch,bh
add ch,bl
sub ch,48

mov ah,2
mov dl,ch
int 21h

ret