.MODEL SMALL
.STACK 100H   


.DATA  
   A DB 68    ; ASCII OF 'D'
   B DB 72    ; ASCII OF 'H'  
   
           
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 2
    MOV DL, A
    INT 21H

    MOV AH, 2
    MOV DL, B
    INT 21H


    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
