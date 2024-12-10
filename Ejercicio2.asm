;Escribir un programa en lenguaje assembly del MSX88 que implemente 
;la sentencia condicional de un lenguaje de alto nivel 
;IF A < B THEN C = A ELSE C = B. Considerar que las variables de la 
;sentencia están almacenadas en los registros internos de la CPU 
;del siguiente modo A en AL, B en BL y C en CL.
;Determine las modificaciones que debería hacer al programa 
;si la condición de la sentencia IF fuera:
;a) A ≤ B
;b) A = B

        org 1000h
A  db 1
B  db 5
C  db 9
;if else
        org 3000h
menorif:cmp al,bl
        jns else
        mov cl,al
        jmp fin
   else:mov cl,bl
    fin:ret

        org 4000h
IncisoA:cmp al,bl
        jnz else
        jns else
        mov cl,al
        jmp fin
   elseA:mov cl,bl
   fin1:ret
   

        org 5000h
IncisoB:cmp al,bl
        jnz else
        mov cl,al
        jmp fin
   elseB:mov cl,bl
   fin2:ret


        org 2000h   
        mov al,A 
        mov bl,B
        mov cl,C
        call menorif
        ;call IncisoA
        ;call IncisoB
        hlt
        end