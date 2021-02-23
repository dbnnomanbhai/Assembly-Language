       .MODEL SMALL
.STACK 100H
.DATA
A1 DB 10,13,10,13, 'FOR ADDITION     PRESS:'1' $'
A2 DB 10,13,10,13,'  FOR SUBSTRACTION   PRESS:'2' $'
A3 DB 10,13,10,13,'FOR  MULTIFICATION PRESS :'3' $'
A4 DB 10,13,10,13,' FOR DIVITION     PRESS : '4'$'
A5 DB 10,13,10,13,' CHOOSE YOUR OPTION PLEASE:$'
A6 DB 10,13,10,13,' ENTER 1ST NUMBER PLEASE:$'
A7 DB 10,13,10,13,' ENTER 2ND NUMBER PLEASE:$'
A8 DB 10,13,10,13,' RESULT IS :$'      
A9 DB 10,13,10,13,' WHAT DO YOU WANNA DO? FOR CONTINUE FRESS:1 OR EXIT FRESS :2 PRESS: $'
A10 DB 10,13,10,13,' THANK YOU.STAY SAFE AND STAY HOME$' 
                           

NUM1 DB ?
NUM2 DB ?
RESULT DB ?
.CODE
MAIN PROC 
    
    
   
    
    MOV AX,@DATA
    MOV DS,AX
              
   START:
                
    LEA DX,A1
    MOV AH,9
    INT 21H
    
    LEA DX,A2
    MOV AH,9
    INT 21H
    
    LEA DX,A3
    MOV AH,9
    INT 21H
    
    LEA DX,A4
    MOV AH,9
    INT 21H 
    
    
    
    LEA DX,A5
    MOV AH,9
    INT 21H
    
  
    MOV AH,1
    INT 21H
    MOV BH,AL
    SUB BH,48
    
    CMP BH,1
    JE ADD
    
    CMP BH,2
    JE SUB
     
    CMP BH,3
    JE MUL
    
    CMP BH,4
    JE DIV
    
 ADD:
    LEA DX,A6   
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    LEA DX,A7     
    MOV AH,9
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    ADD AL,BL
    MOV AH,AL
    AAA
    
    MOV BX,AX 
    ADD BH,48
    ADD BL,48 
    
     
     LEA DX,A8
     MOV AH,9
     INT 21H
             
     MOV AH,2
     MOV DL,BL
    
     INT 21H        
 
     LEA DX,A9
     MOV AH,9
     INT 21H
    
     MOV AH,1
    INT 21H 
    
    MOV BL,AL
    CMP BL,'1'
    
    JE START
    JMP EXIT
    
     
SUB:
 
    LEA DX,A6   
    MOV AH,9
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    LEA DX,A7
    MOV AH,9     
    INT 21H 
    
    
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    SUB BL,CL
    ADD BL,48
    
    
    
    
    LEA DX,A8
    MOV AH,9
    INT 21H
    
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
     LEA DX,A9
     MOV AH,9
     INT 21H
    
     MOV AH,1
    INT 21H 
    
    MOV BL,AL
    CMP BL,'1'
    
    JE START
    JMP EXIT
    
    
 MUL:
 
    LEA DX,A6
    MOV AH,9
    INT 21H
    
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV NUM1,AL
    
    
    LEA DX,A7
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV NUM2,AL
    
    
    MUL NUM1
    MOV RESULT,AL
    AAM  
    
    
    ADD AH,30H
    ADD AL,30H
    
    
    MOV BX,AX 
    
    
    LEA DX,A8
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
     LEA DX,A9
     MOV AH,9
     INT 21H
    
     MOV AH,1
    INT 21H 
    
    MOV BL,AL
    CMP BL,'1'
    
    JE START
    JMP EXIT
    
   
DIV:
    LEA DX,A6
    MOV AH,9
    INT 21H
    
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV NUM1,AL
    
    
    LEA DX,A7
    MOV AH,9
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV NUM2,AL
    
    MOV CL,NUM1
    MOV CH,00
    MOV AX,CX  
    
    DIV NUM2
    MOV RESULT,AL
    MOV AH, 00
       
    
    
    ADD AH,30H
    ADD AL,30H
    
    
    MOV BX,AX 
    
    
    LEA DX,A8
    MOV AH,9
    INT 21H 
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
     LEA DX,A9
     MOV AH,9
     INT 21H
    
     MOV AH,1
    INT 21H 
    
    MOV BL,AL
    CMP BL,'1'
    
    JE START
    JMP EXIT
    
    
       
    
 EXIT: 
 
   LEA DX,A10
   MOV AH,9
   INT 21H
    
    MOV AH,4CH
    INT 21H
     MAIN ENDP         
END MAIN




