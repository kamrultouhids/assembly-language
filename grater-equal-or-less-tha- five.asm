
org 100h

; add your code here  

.DATA
MSG DB 'LESS THAN 5.$'    
MSG1 DB 'EQUAL TO 5.$'
MSG2 DB 'GREATER THAN 5.$'
.CODE
MAIN PROC
;display
 
;input
MOV AH,1
INT 21H
MOV BL,AL  

;THIS IS A NEW LINE BLOCK
        MOV AH,2
        MOV DL,0DH
        INT 21H   
        MOV DL,0AH
        INT 21H
        ;END OF THE NEW LINE BLOCK

CMP BL,53    ;TEST AX
JL LESS      ;AX < 5
JE EQUAL     ;AX = 5
JG GREATER    ;AX > 5
                
                

LESS:
         LEA DX , MSG
         JMP DISPLAY
EQUAL:
     LEA DX , MSG1
     JMP DISPLAY
GREATER:
     LEA DX , MSG2
     JMP DISPLAY  
     

     
DISPLAY:  
       
        
           
		MOV AH,9
		INT 21H    
     

MAIN ENDP

    END MAIN

       
       
       
       

ret




