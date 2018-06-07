.model small
.stack
.data

a dw 1
b dw 3
c dw 2

result dd ?

.code
.startup

mov ax, b
mul ax
push ax
push dx

mov ax, a 
mov bx, 4
imul bx
mov bx, c
imul bx

js negative  

    pop a  ;dx
    pop b  ;ax

    sub b, ax
    sbb a, dx
    
    mov ax, b
    mov dx, a
     
    jmp fine 
    
negative:

    pop a  ;dx
    pop b  ;ax

    add ax, b
    adc dx, a
            
fine:

mov result, ax 
mov result + 2, dx
  
     
.exit
end