;Dada la frase "Organización y la Computación", almacenada en la 
;memoria, escriba un programa que determine cuantas letras ‘a’ 
;seguidas de ‘c’ hay en ella

           Org 1000h
      msg db "Organización y la Computación"
           Org 2000h
      mov bx,offset msg
      mov ah,0
salto:mov cx,[bx]
      cmp cx,6361h
      jnz sigo
      inc ah
sigo: inc bx
      cmp bx,101Eh
      jnz salto
      hlt
end