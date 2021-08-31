 .model small
.stack 100h
.data
 
 a db 10,13, 'take first input: $'
 b db 10,13, 'take second input:  $'
 

c db 10,13,  ' largest number :  $'

   
.code
main proc
    
    
    ;largest number find bewtween two number   
  
          mov ax,@data
          mov ds,ax
          
     mov ah,9
     lea dx,a
     int 21h 
     
     mov ah,1
     int 21h  
     mov bl,al   
     
     
              
     mov ah,9
     lea dx,b
     int 21h 
     
     mov ah,1
     int 21h  
     mov bh,al  
     
     largest:
     
     cmp bl,bh
     jg l1
     jmp l2
     
     l2:
     
     mov ah,9
     lea dx,c
     int 21h
     
     mov ah,2
     mov dl,bh
     int 21h
     jmp exit
     
     
     l1:
     mov ah,9
     lea dx,c
      int 21h
      
     mov ah,2
     mov dl,bl
     int 21h
     
     
     exit:
     
     
    
        
mov  ah,4ch
   int 21h
   main endp
end main


