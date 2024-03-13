.model small
.stack 256
.data
a db 18 
b db -12
d dw -200
.code
start:  
    mov ax,@data
    mov ds,ax
    ;AL = 12; BL = 15; AL = AL + 7; BL = BL – 6; AH = a – 16; BH = b + 13; AH--; BH++;
    ;CL = AL + BL; CH = BH – AH + 1; DX = CX + d – 100;
    ;որտեղ a-ն և b-ն բայթային նշանով փոփոխականներ են՝ a = 18, b = -12, իսկ d-ն՝բառային
    ;նշանով փոփոխական է՝ d = -200
    mov al,12
    mov bl,15
    add al,7
    sub bl,6
    mov ah,a
    sub ah,16
    mov bh,b
    add bh,13
    dec ah
    inc bh
    mov cl,al
    add cl,bl
    mov ch,bh
    sub ch,ah
    add ch,1
    mov dx,cx
    add dx,d
    sub dx,100

    mov ax,4c00h
    int 21h
end start