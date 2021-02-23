.model small
.stack 100h
.data
  
m db 10,13 , ' english capital latter $' 
 
                             
                             
.code

main proc   
    
      
      
      ;loop using
      
   mov ax,@data
   mov ds,ax
   
   mov ah,9
   lea dx,m
   int 21h  
   
   mov ah,2
   mov dl,10
   int 21h
   mov dl,13
   int 21h
   
      mov cx,26
      mov dx,'A'
      level1:          
      int 21h
      inc dx
      loop level1
      
   
   
   mov 4,ch
   int 21h
   main endp
end main

