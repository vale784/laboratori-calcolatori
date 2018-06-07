.model small
.stack
.data

valore dw 1, 2, 5, 10, 20, 50, 100, 200
monete db 100, 23, 17, 0, 79, 48, 170, 211
euro dw 0
cent dw 0

.code
.startup

mov bx, 100
mov cx, 8 ;numero di tipi di monete
mov si, 0

label:
    push bx
    
    mov bx, 8
    sub bx, cx
    
    mov ah, 0
    mov al, monete[bx]
    mul valore[si]
    
    pop bx
    
    div bx
    add euro, ax
    add cent, dx
    
    add si, 2
    loop label
    
    
    mov ax, cent
    div bx
    add euro, ax
    mov cent, dx
    
    
   
.exit
end