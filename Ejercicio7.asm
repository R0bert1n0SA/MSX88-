;Escribir un programa que sume dos números representados en Ca2 de 32 bits almacenados en memoria de datos y
;etiquetados NUM1 y NUM2 y guarde el resultado en RESUL (en este caso cada dato y el resultado ocuparán 4 celdas
;consecutivas de memoria). Verifique el resultado final y almacene 0FFH en la celda BIEN en caso de ser correcto o
;en otra MAL en caso de no serlo. Recordar que el MSX88 trabaja con números en Ca2 pero tener en cuenta que las
;operaciones con los 16 bits menos significativos de cada núm deben realizarse en BSS


                 Org 1000h
            num1  dw  65534
            num2  dw  1
            resul dw  0
            Bien db ? 
            Mal  db ?
      
               Org 2000h
            mov bx,num1
            mov ax,num2
            add ax,bx
            jc incorrecto ;si hay carry es incorrecto
            mov bien,0ffh
            mov resul,ax
            jmp fin
incorrecto: mov mal,0ffh
            mov resul,ax
      fin:  hlt
            end