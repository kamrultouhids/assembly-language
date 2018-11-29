org 100h

; add your code here
.DATA
     oddMsg DB ' It is a odd  number.$'
     evenMsg DB ' It is a even number.$'
.CODE
MAIN PROC   

MOV AX,@DATA
MOV DS,AX


MOV CX,10
MOV AH,2




TOP:

    MOV AH, 1                    
    INT 21H
    MOV BL, AL  
     

    TEST BL, 01H ;chek less then zero
    JNE  ODD ;Jump if Condition Is Met      
    jmp even
    
          
    ODD:                      
      LEA DX,oddMsg  
      MOV AH,9 
      int 21h 
            
        ;THIS IS A NEW LINE BLOCK
        MOV AH,2
        MOV DL,0DH
        INT 21H   
        MOV DL,0AH
        INT 21H
        ;END OF THE NEW LINE BLOCK  
        
      dec CX
      JNZ TOP  
            
    even:                      
      lea DX,evenMsg     
      mov AH,9 
      int 21h   
      
      ;THIS IS A NEW LINE BLOCK
        MOV AH,2
        MOV DL,0DH
        INT 21H   
        MOV DL,0AH
        INT 21H
        ;END OF THE NEW LINE BLOCK   
        
      dec CX
      JNZ TOP   
  



ret



