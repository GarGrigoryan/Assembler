;Գրել ծրագիր, որը կկատարի հետևյալ գործողությունները.
;AX = a * 5; BX =b * 15; CL = 4; DL = ( AX + BX ) / CL; DH = ( AX + BX ) % CL; DH--; DL++;
;որտեղ a-ն և b-ն բայթային առանց նշանի փոփոխականներ են, a = 18, b = 3;

.model small
.stack 256
.data
    a db 18 
    b db 3
.code
start:
    mov ax,@data
    mov ds,ax
    mov al,a
    mov bx,5
    mul bl
    mov si,ax

    mov al,b
    mov bx,15
    mul bl
    mov di,ax

    mov cl,4
    add si,di
    mov ax,si
    div cl
    mov dl,al
    mov dh,ah
    dec dh
    inc dl

;Sers es du <3
;du el imm 
    ;mov al,15
    ;mul b
    ;mov bl,al
    ;mov dx,0
    mov ah,4ch
    mov al,0
    int 21h
end start