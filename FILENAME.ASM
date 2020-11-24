.model small
.data
    num1 db 5
    num2 db 5
    res db ?

.code
   mov ax, @data
   mov ds, ax

   mov al, num1
   add al, num2
   mov res, al

   mov ax, 4ch
   int 21h
   end
