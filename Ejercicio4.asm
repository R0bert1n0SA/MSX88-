;Escribir un programa que genere una tabla a partir de la dirección
;de memoria almacenada en la celda DIR con los
;múltiplos de 5 desde cero hasta MAX.
        ORG 1000h
max dw 30
dir dw 3000h

        ORG 2000H
      MOV AX, 0
      MOV BX, dir
      Mov dx,max
CARGA:MOV [BX], AX
      ADD BX, 2
      ADD AX, 5
      CMP ax,max
      JS CARGA
      jz CARGA
      HLT
END