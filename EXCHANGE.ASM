;Program to exchange the contents of two arrays element by element

 .model small
 .data
    a db 10h, 20h, 30h, 40h, 50h
    b db 11h, 22h, 33h, 44h, 55h

 .code
    mov ax, @data
    mov ds, ax

    lea si, a   ;si will have starting address of a
    lea di, b   ;di will have starting address of b

    mov cl, 05h

    ;loop definition

    back :  mov   al, [si]    ;[si] retrieves the element present in the address SI 
            xchg  al, [di]
            mov   [si], al

    inc si
    inc di
    loop back  ;1st decrements- cx=cx-1, then checks- if cx!=0, then, if true passes the control to back, loop continues, else it comes out of loop

    ;to verify the output

    lea si, a
    lea di, b

    mov bl, [si]
    mov bh, [di]

    mov ah, 4ch
    int 21h
    end
