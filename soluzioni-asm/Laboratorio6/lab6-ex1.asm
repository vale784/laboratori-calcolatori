.model small
.stack

    DIM equ 4

.data

    parola db 4 dup(?)

.startup
.code
    
    
    mov bx, 0
    mov cx, DIM
    
    push cx
    push bx

    ciclo1: 
        mov ah, 1
        int 21h
    
        call conversione
    
        mov parola[bx], al
        inc bx
        loop ciclo1
    
    
    pop bx
    pop cx
    
    mov ah, 2
    mov dl, ' '
    int 21h
    
    ciclo2:
        mov ah, 2
        mov dl, parola[bx]
        int 21h
        inc bx
        loop ciclo2
        
     
.exit

    conversione proc 
        sub al, 'a'
        add al, 'A'
        ret
    conversione endp
    
end