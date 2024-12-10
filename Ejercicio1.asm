;Implemente un programa que desarrolle F = ((A - B)*C) + (D/E)
        org 1000h
A  dw 10
B  dw 5
C  dw 4
D  dw 16
E  dw 8
        org 3000h
    div:cmp cx,0
        jz Fin
        inc bx
        sub cx,dx
        jmp div
    Fin:mov cx,bx
        ret
        
        org 4000h
    mul:cmp bx,0
        jz Fin1
        add dx,ax
        dec bx
        jmp mul
    Fin1:mov ax,dx
         ret

        
        org 2000h
        mov ax,A 
        mov bx,B
        mov cx,D
        mov dx,E
        sub ax,bx
        mov bx,0
        call div
        mov bx,C
        mov dx,0
        call mul
        add ax,cx
        hlt
        end