.model small
.stack
.data

fib dw 20 dup(?)

.code
.startup

mov fib[0], 1
mov fib[2], 1 
mov ax, 0
mov bx, 4
mov cx, 18

label:
mov ax, fib[bx-2]
add ax, fib[bx-4]
mov fib[bx], ax
add bx, 2
loop label


.exit
end