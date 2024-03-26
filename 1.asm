;Հաշվել տրված թվային միաչափ զանգվածի տարրերի գումարը (տարրերի չափը՝ 1բայթ / 2բայթ):
.model small
.stack 256

.data
    a dw 1,3,25,2,300
.code
start:
    mov ax,@data
    mov ds,ax 
    mov cx,5
    xor si,si
    xor di,di
circle:mov ax,a[si]
    add di,ax
    add si,2
    loop circle

    mov ax,4c00h
    int 21h
end start
