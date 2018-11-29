org 100h
.DATA
msg DB ' It is a number.$'
msg1 DB ' It is not a number.$'                                                               
.CODE
MAIN PROC               
mov ah,1

int 21h
mov ah,al

cmp ah,47
jg step1
          
jmp step_non_num         
          
step1:
    cmp bl,58
    jl step_num
    jmp step_non_num
 
step_num:
    lea dx,msg
    jmp display
step_non_num:
    lea dx,msg1 
display:
    mov ah,9 
    int 21h    
 
ret       