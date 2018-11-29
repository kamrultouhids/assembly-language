
org 100h

.DATA  

lowerMsg DB ' It is lower character.$'
uperMsg DB ' It is uper character.$'

.CODE
MAIN PROC
;display
 
;input
mov ah,1
int 21h
mov bl,al     

 
cmp bl,96
jge step1

cmp bl,64
jge checkUpercaseStep1
 
jmp exit

step1:
    cmp bh,123
    jle displayStepLowerLater
    jmp checkUpercaseStep1   
    
displayStepLowerLater:
    lea dx,lowerMsg
    jmp display    

checkUpercaseStep1:
    cmp bh,91
    jle displayUperLater
    jmp display
    
displayUperLater:
    lea dx,uperMsg   
    jmp display  
     
display:          
	mov ah,9
	int 21h   
	
exit: 
     
ret





