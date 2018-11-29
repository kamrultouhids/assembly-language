org  100h
 
COMMENT @taking 1st input from user @
mov ah,1       
int 21h
mov bh,al

sub bh,32

mov ah,2
mov dl,bh  
int 21h

ret