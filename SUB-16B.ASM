.model small
.data
    num1 dw 360
    num2 dw 180
    res dw ?

.code
    mov ax, @data
    mov ds, ax

    mov ax, num1
    sub ax, num2
    mov res, ax

    mov ah, 4ch
    int 21h
    end