;Escribir un programa que, dado un número X, genere un arreglo 
;con todos los resultados que se obtienen hasta llegar
;a 0, aplicando la siguiente fórmula: si X es par, se le resta 7
; si es impar, se le suma 5, y al resultado se le aplica
;nuevamente la misma fórmula. 
;Ej: si X = 3 entonces el arreglo tendrá: 8, 1, 6, -1, 4, -3, 2,
;-5, 0

           Org 1000h
      x dw 3
           Org 2000h
      mov ax,x
      mov bx,3000h
carga:mov cx,ax
      and cx,1
      cmp cx,0
      jnz Impar
      sub ax,7
      mov [bx],ax
      add bx,2
      jmp sigo
Impar:add ax,5
      mov [bx],ax
      add bx,2
 sigo:cmp ax,0
      jnz carga
      hlt
end