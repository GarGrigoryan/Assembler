;Գրել ծրագիր, որը կկատարի հետևյալ գործողությունները.
;AX = a * 5; BX =b * 15; SI = AX++; DI = BX--; CL = -4; DH = ( AX - BX ) % CL; DL =( AX - BX ) / CL;
;որտեղ a-ն և b-ն բայթային նշանով փոփոխականներ են, a = 18, b = -23;

.model small
.stack 256
.data
    a db 18 
    b dw -23
.code
start:
    mov ax,@data
    mov ds,ax
    mov al,a
    mov bl,5
    mul bl
    mov si,ax
    mov ax,b
    mov bx,15
    imul bx
    mov di,ax
    inc si
    dec di
    mov cl,-4
    sub si,di
    mov ax,si
    idiv cl
    mov dh,ah
    mov dl,al
    mov ah,4ch
    mov al,0
    int 21h
end start