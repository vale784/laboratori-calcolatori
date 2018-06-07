.model small
.stack
.data

opa db 0
opb db 0
ris db ?

.code
.startup

mov cx, 8
mov dl, 2

cicloExt:
    mov ah, 1
    int 21h
    mov bl, al ;in bl ci sta il bit
    mov al, 1  ;in al ci sta 2^0
    
    push cx
    dec cx
    cmp cx, 0
    ;al termine del ciclo abbiamo 2^(cx-1) in al
    jz skip
    cicloInt:
        mul dl
        loop cicloInt
    skip: 
    mul bl ;no overflow -> al più bl = 1
    add opa, al
    pop cx     
    loop cicloExt 
    
mov cx, 8
    
cicloExt2:
    mov ah, 1
    int 21h
    mov bl, al ;in bl ci sta il bit
    mov al, 1  ;in al ci sta 2^0
    
    push cx
    dec cx
    cmp cx, 0
    ;al termine del ciclo abbiamo 2^(cx-1) in al
    jz skip2
    cicloInt2:
        mul dl
        loop cicloInt2
    skip2: 
    mul bl ;no overflow -> al più bl = 1
    add opb, al
    pop cx     
    loop cicloExt2 
    
    
mov al, opb
not al
and al, opa
not al

mov ah, opa
xor ah, opb

or al, ah

mov ris, al

.exit
end