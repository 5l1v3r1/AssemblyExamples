.data
isim db 'SaltanatNaibi'
karakter dw 12
.code
main proc far
    mov ax,@data
    mov ds,ax
    mov si,offset isim
    mov dl,0
    mov cx,1
    mov bh,0
    gel:
    mov ah,09
    mov al,[si]
    mov bl,[si]
    int 10h
    mov ah,2
    inc dl
    int 10h 
    inc si
    cmp si,karakter
    jne gel
    mov ah,4cH
    int 21h    
main endp
end main
