
    DIM equ 5 

.model small
.stack
.data

    vect1 dw 1, 2, 3, 4, 5 
    vect2 dw 5, 6, 7, 10, 11
    ;media   3, 4, 5, 7, 8
    avg dw DIM dup(?)

.code
.startup
    
    call average
    
    mov bx, 0
    mov cx, DIM
         
.exit

average proc
    
    mov bx, 0
    mov cx, DIM
    mov dl, 2
    
    ciclo:
        
        mov ax, vect1[bx]
        add ax, vect2[bx]
        
        div dl
        
        mov avg[bx], ax
        
        add bx, 2
        
        loop ciclo 
               
    ret
average endp
    
end