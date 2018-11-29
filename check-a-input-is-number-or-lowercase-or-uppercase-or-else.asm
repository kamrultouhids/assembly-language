
org 100h

.DATA  

numberMsg DB ' It is number.$'    
symbolMsg DB  ' It is symbol.$'
lowerMsg DB 'It is lower character.$'
uperMsg DB ' It is uper character.$'

.CODE
MAIN PROC
;display
 
;input
mov ah,1
int 21h
mov bl,al     

 
cmp bl,96
jg step1

cmp bl,64
jg checkUpercaseStep1
 
cmp bl,47
jg checkNumberStep1


jmp stepSymbol

step1:
    cmp bh,123
    jl displayStepLowerLater
    jmp checkUpercaseStep1   
    
displayStepLowerLater:
    lea dx,lowerMsg
    jmp display    

checkUpercaseStep1:
    cmp bh,91
    jl displayUperLater
    jmp display
    
displayUperLater:
    lea dx,uperMsg   
    jmp display  
     
checkNumberStep1:  
    cmp bh,58
    jl displayNumber
    jmp display  

displayNumber:
    lea dx,numberMsg    
    jmp display           

stepSymbol:
    lea dx,symbolMsg    
    jmp display  
     
display:          
	mov ah,9
	int 21h    
     
ret




