; Գտնել տրված թվային միաչափ զանգվածի տարրերի (տարրերի չափը՝ 1բայթ / 2 բայթ)
;մինիմումը, մաքսիմումը:

.model small
.stack 256

.data
    a dw 1,2,8,2,12,9
.code
start:
    mov ax,@data
    mov ds,ax
    mov bx,a[0]
    mov cx,5
    mov si,2
    circle:
        cmp bx,a[si]
        jbe a1
        jmp a2
a1:     mov bx,a[si]
a2:     add si,2
    loop circle
    mov dx,bx
    mov ax,4c00h
    int 21h
end start 