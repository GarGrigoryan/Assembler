; Ունենք a[10] և b[10] թվային միաչափ զանգվածներ (տարրերի չափը՝ 1բայթ / 2 բայթ):
;Ստեղծել c[10], որտեղ
;   a) c[i]=min(a[i],b[i]),
;   b) c[i]=max(a[i],b[i]):

.model small
.stack 256

.data

a dw 5,2,7,1,9
b dw 7,1,10,15,2
c dw 5 dup (?)
.code
start:
    mov ax,@data
    mov ds,ax

;  a) c[i]=min(a[i],b[i]),
    mov cx,5
    xor si,si
    circle:
        mov ax,a[si]
        mov bx,b[si]
        cmp ax,bx
        ja a1 ; ax > bx
        mov c[si],ax
        jmp a2; ax <= bx
a1:     mov c[si],bx
a2:     add si,2
        loop circle

    mov ax,4c00h
    int 21h
end start