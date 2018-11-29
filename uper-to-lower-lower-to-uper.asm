
org 100h
            
mov ah,1       
int 21h
mov bh,al

cmp bh,96
jg step_letter_lowercase
jmp step_letter_upercase      
          
step_letter_lowercase:
    cmp bh,123
    jl convart_upercase
    jmp exit  

convart_upercase:
    sub bh,32 
    mov ah,2 
    mov dl,bh  
    int 21h
    jmp exit  
    
step_letter_upercase:
    cmp bh,91
    jl convart_lowercase  
    jmp exit  
    
convart_lowercase:
    add bh,32 
    mov ah,2 
    mov dl,bh  
    int 21h
    
exit:
                  
                  
 
ret       