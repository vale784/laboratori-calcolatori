.model small
.stack  

B equ 5
H equ 3

.data

tab dw 154, 123, 109, 86, 4, ?,
    dw 412, -23, -231, 9, 50, ?,
    dw 123, -24, 12, 55, -45, ?,
    dw ?, ?, ?, ?, ?, ?

.code
.startup

mov bx, 0
mov cx, H

cicloRighe:
    push cx
    mov cx, B
    mov ax, 0
    
    cicloOrizz:
        add ax, tab[bx]
        add bx, 2
        loop cicloOrizz
    mov tab[bx], ax
    add bx, 2    
    pop cx
    loop cicloRighe

mov bx, 0
mov cx, B
add cx, 1
    
cicloColonne:
    push cx
    push bx
    mov cx, H
    mov ax, 0
    
    cicloVert:
        add ax, tab[bx]
        add bx, 12
        loop cicloVert
    
    mov tab[bx], ax       
    
    pop bx
    add bx, 2
    pop cx    
    loop cicloColonne    
    
     
.exit
end