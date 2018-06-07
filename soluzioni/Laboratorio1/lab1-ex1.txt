.model small
.stack
.data

var1 db 'a'
var2 db 's'
var3 db 'm'

.code
.startup

sub var1, 'a'
add var1, 'A'

sub var2, 'a'
add var2, 'A'

sub var3, 'a'
add var3, 'A'

mov ah, 02h
mov dl, var1
int 21h
mov dl, var2
int 21h
mov dl, var3
int 21h




.exit
end
