mov ax,cs
mov ds,ax
mov ah,9
mov dx, offset Git
int 21h
xor ax,ax
int 21h
Git:
db "Merhaba Dünya!",13,10,"$"
