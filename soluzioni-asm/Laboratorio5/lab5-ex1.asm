.model small
.stack
.data

opa dw 2043
opb dw 5
res dw ?

.code
.startup

mov ah, 1
int 21h

sub al, '0'
cmp al, 1
jz case1
cmp al, 2
jz case2
cmp al, 3
jz case3
cmp al, 4
jz case4
jmp default

case1:
    mov ax, opa
    add ax, opb
    mov res, ax
    jmp default
    
case2:         
    mov ax, opa
    sub ax, opb
    mov res, ax
    jmp default

case3:         
    mov ax, opa
    mul opb
    mov res, ax
    jmp default

case4:
    mov dx, 0         
    mov ax, opa
    div opb
    mov res,ax
    jmp default

default:
.exit
end