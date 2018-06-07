.model small
.stack  
dim equ 4
.data

addendi db -5, -45, -98, -128
var dd 69000
ris dd ?

.code
.startup
         
mov cx, 0
mov dx, 0

addVett:
mov al, addendi[bx]
cbw
add dx, ax
inc bx
cmp bx, dim
jnz addVett

mov ax, dx
cwd
add ax, var
adc dx, var +2
mov ris, ax
mov ris +2, dx

 

    
.exit
end