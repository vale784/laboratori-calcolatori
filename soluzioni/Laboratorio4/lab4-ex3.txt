.model small
.stack
.data

trans dd 2300, 4500, 8500, 29000, 68000, 134000 
      dd 275000, 1180235, 3100000, 8800000, 
      dd 22000000, 112000000, 26000000,1750000000

area dw 12, 20, 18, 33, 44, 49, 104, 173, 294
     dw 162, 184, 110, 31, 122
     
dens dw 14 dup(?)


.code
.startup

mov bx, 0
mov cx, 14
mov si, 0 

jmp label

exception:
    mov dens[si], 0ffffh
    jmp ritorno

label:
    mov ax, trans[bx]
    mov dx, trans[bx + 2]
    
    ;catch exception
    cmp dx, area[si]
    
    jns exception
    div area[si]
    mov dens[si], ax    
    ritorno:
    
    add bx, 4
    add si, 2
    loop label
      
end      
.exit