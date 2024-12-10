;Escribir un programa que sume 2 vectores de 6 elementos,de modo tal que
utilice una subrutina que sume números de 32 bits.

                 Org 1000h
            tab1  dw  10,25,20,5,7,99
                  dw  700,9,12,65,0,3
            tab2  dw  1,5,6,78,15,9
                  dw  50,67,8,255,67,0
           iterar   db 0
 
               Org 3000h
      Sumar:mov bx,ax
            add dx,[bx]
            mov bx,cx
            add dx,[bx] 
            ret
               Org 2000h
            mov ax,offset tab1
            mov cx,offset tab2
     seguir:mov dx,0
            call Sumar
            inc iterar
            add ax,2
            add cx,2
            cmp iterar,6
            jnz seguir
            hlt
            end