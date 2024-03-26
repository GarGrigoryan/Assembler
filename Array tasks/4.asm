; Ունենք a[10] և b[10] թվային միաչափ զանգվածներ (տարրերի չափը՝ 1բայթ / 2 բայթ):
;Ստեղծել c[10], որտեղ
;   a) c[i]=a[i], եթե a[i]-ի 2 և 4 բիթերը 0 են կամ b[i]-ն զույգ է, հ.դ.՝ c[i]=b[i],

.model small
.stack 256

.data
    a dw 20,13,20,20,4
    b dw 0,6,1,124,83
    c dw 5 dup (?)
.code
start:
    mov ax,@data
    mov ds,ax
    xor si,si
    mov cx,5
    circle:
        mov ax,a[si]
        mov bx,b[si]
        test ax,0000000000010100b
        jz a1 ; z flag = 1
        test bx,0000000000000001b
        jz a1
        jmp a2
a1:     mov c[si],ax
        jmp a3
a2:     mov c[si],bx
a3:     add si,2
        loop circle

    mov ax,4c00h
    int 21h
end start