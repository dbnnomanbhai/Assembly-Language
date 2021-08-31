 .MODEL SMALL
 .STACK 100H
 .CODE
 .DATA
    A  DB  10,13,10,13, '  ENTER ELEMENT FOR BUBBLE SHORT:$'
    B  DB  10,13,10,13, ' BUBBLE SORT BY DESCENDING  ORDER: $'
    
    
    
   

    ARRAY   DB  ?
      

 
   MAIN PROC
     MOV AX, @DATA                
     MOV DS, AX

                     

     LEA DX, A             
     MOV AH, 9
     INT 21H
    
    
    
    
    
    XOR CX,CX
    MOV AH,1
    INT 21H
    XOR SI,SI
                    
    

    LEVEL1:
    
    CMP AL,0DH
    JE LEVEL2
    
    MOV ARRAY[SI],AL
    INC SI
    INC CX
    MOV AH,2
    MOV DL,' '
    INT 21H
    MOV AH,1
    INT 21H
    JMP LEVEL1
    
    LEVEL2:
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    JCXZ EXIT
    
    LEA SI,ARRAY
    MOV BX,CX
    CALL BUBBLE_SORT
    MOV AH,9
    LEA DX,B
    INT 21H
    
    XOR SI,SI
    
    LEVEL3:
    MOV AH,2
    MOV DL,ARRAY[SI]
    INT 21H
    MOV DL,' '
    INT 21H
    INC SI
    LOOP LEVEL3
    
    
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
   
    
    
    
 

 BUBBLE_SORT PROC
    

   PUSH AX                          
   PUSH BX                         
   PUSH CX                         
   PUSH DX                         
   PUSH DI                         

   MOV AX, SI                     
   
   MOV CX, BX                     
   
    DEC CX                        
   

    LEVEL5:                 
    
     MOV BX, CX                   
     

     MOV SI, AX                   
     
     MOV DI, AX                  
     
     INC DI                       
     

      LEVEL6:                 
      
       MOV DL, [SI]               
       

       CMP DL, [DI]               
       
       JG CHANGE         
       

       XCHG     DL, [DI]         
       
       MOV [SI], DL              
       

        CHANGE:
                    
                    
        INC SI                     
       
      INC DI                    
       

         DEC BX                    
       
     JNZ LEVEL6            
     
   LOOP LEVEL5                

   POP DI                         
   POP DX                          
   POP CX                          
   POP BX                          
   POP AX                          

   RET                             
 BUBBLE_SORT ENDP


 
  



 END MAIN


