; Contador de 0 a 9 usando solo banderas y saltos
; Usamos INC e inspeccionamos el valor con una comparación indirecta (ej. usando JZ con resta)

MOV AL, 0           ; Contador inicial

INICIO:
; Mostrar AL (por ejemplo en consola, no implementado aquí)

INC AL              ; AL = AL + 1

MOV BL, AL
SUB BL, 10          ; BL = AL - 10

JZ FIN_CONTADOR     ; Si AL == 10, termina
JMP INICIO

FIN_CONTADOR:
; Fin del conteo