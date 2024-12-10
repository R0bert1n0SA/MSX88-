;Escribir un programa que determine cuántos de los elementos de una
;TABLA son menores o iguales que un maximo. Dicha cantidad
;debe almacenarse en la celda TOTAL

            ORG 1000H
        TABLA DB 2,4,6,8,10,12,14,16,18,20
        FIN   DB ?
        TOTAL DB ?
        MAX   DB 14
        
            ORG 2000H
        MOV AL, 0
        MOV CL, OFFSET FIN - OFFSET TABLA
        MOV BX, OFFSET TABLA
        Mov AH,MAX
comparar:CMP [BX],AH
        jc  contar
        jz  contar
        inc bx
        dec cl
        jz final
        jmp comparar
  contar:inc al
        inc bx
        dec cl
        jmp comparar
final:  HLT
        END