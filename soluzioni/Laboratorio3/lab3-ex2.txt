.model small
.stack  
dim equ 10
.data

tavPit db 100 dup(0)

.code
.startup


mov bx, 0
mov cx, dim
mov dh, 1

cicloExt:
    push cx
    mov cx, dim
    mov di, 0
    mov dl, 1
    
    cicloInt:
        mov al, dh
        mul dl
        mov tavPit[bx][di], al
        inc di
        inc dl       
        loop cicloInt    
    
    add bl, dim
    inc dh
    pop cx
    loop cicloExt 
     
.exit
end