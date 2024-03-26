; Ունենք a[10] և b[10] թվային միաչափ զանգվածներ (տարրերի չափը՝ 1բայթ / 2 բայթ):
;Ստեղծել c[10], որտեղ.
;       c[i]=a[i]+b[i]:
.model small
.stack 256

.data
    a dw 1,3,5,7,9,11,13,15,17,19
    b dw 0,2,4,6,8,10,12,14,16,18
    c dw 10 dup (0) ; haytararuma word tipi 10 texanoc 0-ov skzbnarjeqavorvac zangvac
.code
start:
    mov ax,@data
    mov ds,ax
    mov cx,10
    xor si,si
    circle:
        mov ax,a[si]
        mov bx,b[si]
        add c[si],ax
        add c[si],bx
        add si,2
    loop circle
    
    mov ax,4c00h
    int 21h
end start