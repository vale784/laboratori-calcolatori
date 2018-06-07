 DIM equ 4
.model small
.stack
.data

    string db 'c', 'i', 'a', 'o'

.code
.startup


    mov ax, DIM
    lea bx, string
    
    call printf

.exit

printf proc
    
    mov cx, ax
    ciclo1:
        mov dl, [bx]
        mov ah, 2
        int 21h
        inc bx
        loop ciclo1    
    
    ret
printf endp
    
end