  .MODEL SMALL
 .STACK 100H
 .CODE
 .DATA
 
 A1 DB 10,13,10,13,'******************* WELCOME TO  ONLINE COVID TEST******************* $'
 
 A2 DB 10,13,10,13,'  HAVE YOU MET COVID PATIENT RECENTLY? $'
  
 QA2 DB 10,13,10,13, ' A.YES B.NO PRESS: $' 
  
 A3 DB 10,13,10,13,'      DO YOU FEEL FEVER ?  $'
 
  QA3 DB 10,13,10,13 , ' A.YES B.NO PRESS: $'
 
 A4 DB 10,13,10,13, '   DO YOU FEEL  HEADACHE?  $'
 
  QA4 DB 10,13,10,13, ' A.YES B.NO  PRESS:$'
 
 A5 DB 10,13,10,13,'   DO  YOU  HAVE A DRY COUGH? $'
 
  QA5 DB 10,13,10,13, ' A.YES B.NO PRESS: $'
 
 A6 DB 10,13,10,13,'   DO  YOU FEEL TIRED ? $'  
 
  QA6 DB 10,13,10,13, ' A.YES B.NO  PRESS:$'
 
 A7 DB 10,13,10,13,'  DO  YOU FACE ANY  DIFFICULTY WITH BREATH ? $'
  
 QA7 DB 10,13,10,13, ' A.YES B.NO PRESS: $' 
 
 
 A12 DB 10,13,10,13,'    DO YOU  FEEL  CHEST PAIN? $' 
 QA12 DB 10,13,10,13, ' A.YES B.NO PRESS: $' 
 
 
 
 A8 DB 10,13,10,13,'  YOUR COVID TEST IS POSITIVE $ '
 
 
 
 A9 DB 10,13,10,13,  ' YOUR  COVID TEST IS  NEGETIVE $'
 
 A10 DB 10,13,10,13, ' FOR EMERGENCY  CONTACT WITH NEAREST COVID  HOSPITAL AND ISOLATE FROM OTHERS $'
 
 A11 DB 10,13,10,13, ' STAY SAFE AND NO WORRIES. BE SMILE. WEAR MASK,KEEP DISTANCE $'
 
  
  
 MAIN PROC 
    
     MOV AX,@DATA
     MOV DS,AX
    
    LEA DX,A1
    MOV AH,9
    INT 21H
              
    Q1:
    
      LEA DX,A2
    MOV AH,9
    INT 21H
           
    LEA DX,QA2
    MOV AH,9
    INT 21H
           
               
           
    MOV AH,1
    INT 21H
    CMP AL,'A'
    
    JE Q2
    JNE QW2
    
    Q2:
    
    INC BL
    
     LEA DX,A3
    MOV AH,9
    INT 21H
    
     LEA DX,QA3
    MOV AH,9
    INT 21H
    
   CALL INPUT 
   CMP AL ,'A'
   JE Q3
   JNE QW3
   
    
   
    
    QW2: 
          
          
    DEC BL
    
        LEA DX,A3
    MOV AH,9
    INT 21H
    
     LEA DX,QA3
    MOV AH,9
    INT 21H
    
   CALL INPUT 
   CMP AL ,'A'
   JE Q3
   JNE QW3
   
    
   Q3:
       INC BL
       
     LEA DX,A4
    MOV AH,9
    INT 21H
    
     LEA DX,QA4
    MOV AH,9
    INT 21H
    
   CALL INPUT 
   CMP AL ,'A'
   JE Q4
   JNE QW4
   
   
   QW3:
   
         DEC BL
       
     LEA DX,A4
    MOV AH,9
    INT 21H
    
     LEA DX,QA4
    MOV AH,9
    INT 21H
    
   CALL INPUT 
   CMP AL ,'A'
   JE Q4
   JNE QW4
   
   
   
   
   Q4:
   
   
      INC BL
       
     LEA DX,A5
    MOV AH,9
    INT 21H
    
     LEA DX,QA5
    MOV AH,9
    INT 21H
    
   CALL INPUT 
   CMP AL ,'A'
   JE Q5
   JNE QW5
   
   
    QW4:
    
          DEC BL
       
     LEA DX,A5
    MOV AH,9
    INT 21H
    
     LEA DX,QA5
    MOV AH,9
    INT 21H
    
   CALL INPUT 
   CMP AL ,'A'
   JE Q5
   JNE QW5 
   
   Q5:
   
         INC BL
       
     LEA DX,A6
    MOV AH,9
    INT 21H
    
     LEA DX,QA6
    MOV AH,9
    INT 21H
    
   CALL INPUT 
   CMP AL ,'A'
   JE Q6
   JNE QW6
   
    QW5:
    
          DEC BL
       
     LEA DX,A6
    MOV AH,9
    INT 21H
    
     LEA DX,QA6
    MOV AH,9
    INT 21H
    
   CALL INPUT 
   CMP AL ,'A'
   JE Q6
   JNE QW6
   
   
   
   Q6:
   
         INC BL
       
     LEA DX,A7
    MOV AH,9
    INT 21H
    
     LEA DX,QA7
    MOV AH,9
    INT 21H
    
   CALL INPUT 
   CMP AL ,'A'
   JE Q7
   JNE QW7
   
          
          
     QW6:     
         DEC BL
       
     LEA DX,A7
    MOV AH,9
    INT 21H
    
     LEA DX,QA7
    MOV AH,9
    INT 21H
    
   CALL INPUT 
   CMP AL ,'A'
   JE Q7
   JNE QW7
   
   
   Q7:
   
   
    INC BL
       
     LEA DX,A12
    MOV AH,9
    INT 21H
    
     LEA DX,QA12
    MOV AH,9
    INT 21H
    
   CALL INPUT 
   CMP AL ,'A'
   JE EXIT
   JNE EXITW
   
   QW7:
   
          DEC BL
       
     LEA DX,A12
    MOV AH,9
    INT 21H
    
     LEA DX,QA12
    MOV AH,9
    INT 21H
    
   CALL INPUT 
   CMP AL ,'A'
  JE EXIT
   JNE EXITW
   
   
   
   
          
    
    
    
    INPUT:
    
    MOV AH,1
    INT 21H
    RET
    
    
    EXIT:
    INC BL
           
   ADD BL,48
   CMP BL,57
   
   
   
   MOV AH,2
   MOV DL,BL
   INT 21H
          
     LEA DX,A8
    MOV AH,9
    INT 21H
    
    LEA DX,A10
    MOV AH,9
    INT 21H 
    
    JMP EXIT1
    
    
    
    EXITW:
    
    DEC BL
    
    ADD BL,48
    CMP BL,57
    
     
            
   
    MOV AH,2
   MOV DL,BL
   INT 21H
          
     LEA DX,A9
    MOV AH,9
    INT 21H 
     
     
    LEA DX,A11
    MOV AH,9
    INT 21H        
            
            
            
    JMP EXIT1         
    
    
    
       
     EXIT1:
     
     MOV AH,4CH
     INT 21H
     
     MAIN ENDP
     END MAIN
   
   
    
     
   
              


