.model small
.stack  
dim equ 4
.data

vet1 dw 2, 4, 6, 8
vet2 dw 1, 3, 5, 7
;creo una matrice di word per comodità
;sarebbe più coretto definire una mat 
;di double words
mat dw dim dup(?)
    dw dim dup(?)
    dw dim dup(?)
    dw dim dup(?)

.code
.startup       

mov ax, 0
mov bx, 0
mov cx, dim
mov dx, 0 


 
cicloExt:
    push cx
    mov cx, dim
    mov di, 0
    cicloInt:
        
        mov ax, vet1[bx]
        push bx
        mov bx, dx
        push dx
        mul vet2[di]
        pop dx
        mov mat[bx][di], ax
        add di, 2
        pop bx
        loop cicloInt
        
    pop cx
    add bx, 2 
    add dx, dim
    add dx, dim
    
 
loop cicloExt

.exit
end