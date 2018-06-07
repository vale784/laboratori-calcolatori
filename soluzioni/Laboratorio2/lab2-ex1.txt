.model small
.stack

DIM equ 10

.data

vect db 10, 4, 3, 8, 1, 9, 34, 2, 12, 17
supp dw 0
result db ?

.code
.startup

mov bl, 0
mov cx, DIM  

label: 
mov al, vect[bx]
mov ah, 0
add supp, ax
inc bl
loop label

mov ax, supp
div bl

mov result, al




.exit
end