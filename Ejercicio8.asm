;Escribir un programa que efectúe la suma de dos vectores de 6 
;elementos cada uno (donde cada elemento es un número de 32 bits) 
;almacenados en memoria de datos y etiquetados TAB1 y TAB2 y 
;guarde el resultado en TAB3.
;Suponer que no existirán errores de tipo 
;aritmético (ni carry ni overflow)

                 Org 1000h
            tab1  dw  10,25,20,5,7,99
                  dw  700,9,12,65,0,3
            tab2  dw  1,5,6,78,15,9
                  dw  50,67,8,255,67,0
            tab3  dw ?
            dir   dw ?
            cant db 0
      
               Org 2000h
            mov ax,offset tab1
            mov cx,offset tab2
            mov dir ,offset tab3
   salto:   mov bx,ax
            mov dx,[bx]
            mov bx,cx
            add dx,[bx]
            mov bx,dir
            mov [bx],dx
            add dir,2
            add ax,2
            add cx,2
            inc cant
            cmp cant, 12
            jnz salto
      fin:  hlt
            end