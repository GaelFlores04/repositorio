; Leer dos números en AL y BL

MOV AL, 25
MOV BL, 10

CMP AL, BL
JA INTERCAMBIAR     ; Si AL > BL, no están en orden, intercambiar
JMP ORDENADO

INTERCAMBIAR:
MOV CL, AL
MOV AL, BL
MOV BL, CL

ORDENADO:
; AL y BL están en orden ascendente
