.MODEL LARGE
.DATA
.STACK 100H

A1 DB 10,13,'   LOWER CASE LETTER: $'
A2 DB 10,13, '  UPPER CASE LETTER:$ '
CHAR DB ? ,'$'
 
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,A1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
     
     
      
    LEA DX,A2
    MOV AH,9
    INT 21H
    
    MOV AH,2
    SUB BL,32
    MOV DL,BL
    INT 21H
    
    
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
    

