.data
degerler db 10h, 2h, 5h, 23h, 5h
sonuc db ?
.code
main proc far
mov ax,@data
mov ds,ax              
mov bx, offset degerler
sub ax,ax
mov al, [bx]
mov cx, 4
don: inc bx
cmp al,[bx]
jc degistir
dec cx
jnz don
jz exit
degistir:mov al,[bx]
dec cx
jnz don
exit:
main endp
end main
