.MODEL SMALL
.STACK 100H  

.DATA
A DB 34H  
B DB 32H  

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Addition Part
    MOV AL, A
    SUB AL, 30H     

    MOV BL, B
    SUB BL, 30H      

    ADD AL, BL      

    ADD AL, 30H
          
    MOV DL, AL
    MOV AH, 2
    INT 21H          

    
    MOV DL, 0DH
    MOV AH, 2
    INT 21H
    MOV DL, 0AH
    MOV AH, 2
    INT 21H

    ; Subtraction Part
    MOV AL, A
    SUB AL, 30H 
         
    MOV BL, B
    SUB BL, 30H      

    SUB AL, BL       

    ADD AL, 30H
          
    MOV DL, AL
    MOV AH, 2
    INT 21H         

 
    MOV DL, 0DH
    MOV AH, 2
    INT 21H
    MOV DL, 0AH
    MOV AH, 2
    INT 21H

    ; Multiplication Part
    MOV AL, A
    SUB AL, 30H 
         
    MOV BL, B
    SUB BL, 30H      

    MUL BL           

    ADD AL, 30H 
         
    MOV DL, AL
    MOV AH, 2
    INT 21H          

    
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
