.model small
.stack 100h
.data
.code   
a db ' I Really  $'
b db 'LOve you $'
c db 'Every Moment $'
d db ' YOU Are Living MY heart baby $'


main proc   
    
    
    
    
    
    ;JUMP FUNTION 
    
           
          mov ax,@data
          mov ds,ax
          
        
          mov ah,9
          lea dx,a
          int 21h
          jmp k
          
          k: 
          mov ah,9
          lea dx,b
          int 21h
          jmp l
          
          l:
          mov ah,9
          lea dx,c
          int 21h
          jmp m
          
          m:
          mov ah,9
          lea dx,d
          int 21h
          jmp exit
          
          exit:
          mov ah,4ch
          int 21h
          main endp
end main
          
          
 
   main endp
end main

