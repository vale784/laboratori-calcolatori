.model small
.stack
.data

var dw 2012 
base dw 10

.code
.startup

mov ax, var
mov cx, 0

label:
div base  
push dx   
inc cx
cmp ax, 0 
jnz label

mov ah, 2
label2:
pop dx
int 21h
loop label2

.exit
end