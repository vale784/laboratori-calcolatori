.model small
.stack 
.data

dim dw 423, 3191, 23, 11, -412, 3, 9

.code
.startup

mov bx, 0
mov di, 12

label:
mov ax, dim[bx]
mov cx, dim[di]
mov dim[bx], cx
mov dim[di], ax
add bx, 2
sub di, 2
cmp di, bx 
jns label

.exit
end