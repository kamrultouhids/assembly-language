COMMENT @
taking input and storing it
@

org  100h




mov ah,1
int 21h

mov bh,al

mov ah,2
mov dl,bh
int 21h




ret  


