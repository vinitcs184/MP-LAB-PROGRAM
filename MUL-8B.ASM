.model small
.data
    num1 db 4
    num2 db 4
    num3 dw ?

.code
    mov ax, @data
    mov ds, ax
        
    mul num2
    mov num3, ax

    mov ah, 4ch
    int 21h
    end
