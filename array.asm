 
.MODEL SMALL
.STACK 100h
.DATA        
    ARR DB ?   
    
    A1 DB 10,13, ' HOW MANY VALU YOU WANT TO TAKE?$'
    A2 DB 10,13,' ENTER VALUES$'
      
       A3 DB 10,13,'  ARRAY  IS: $'
    
    
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX 
         
        XOR BX,BX
        XOR CX,CX
          
 
        
      
           
          MOV AH,9
          LEA DX,A1
          INT 21H
       
        MOV AH,1
        INT 21H 
        
        AND AL,0FH
        
        
                 
        
        MOV CL,AL
        MOV BL,AL
        MOV SI,0
        
      
        
         
        INPUT:
        
        
        
           INT 21H 
           
        
          
          
           MOV ARR[SI],AL
           INC SI
           LOOP INPUT  
           
        MOV AH,9
        LEA DX,A3
        INT 21H 
        
        
        MOV CX,BX
        MOV SI,0
        MOV AH,2
        
          
        OUTPUT:
            MOV DL,ARR[SI]
            INT 21h
            INC SI
           LOOP OUTPUT
        
               
         MOV  AH,4CH
         INT 21H
           
           
  MAIN ENDP
END MAIN

 
