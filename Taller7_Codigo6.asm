; Suponiendo que los valores están en AL, BL y CL

MOV AL, 15          ; Primer número
MOV BL, 9           ; Segundo número
MOV CL, 20          ; Tercer número

; AL = A, BL = B, CL = C

; Comparar A con B
MOV DL, AL          ; DL será el mínimo provisional
CMP AL, BL
JA CAMBIO_MIN_AB    ; Si A > B, entonces B es el mínimo
JMP SIGUIENTE_COMP_1

CAMBIO_MIN_AB:
MOV DL, BL

SIGUIENTE_COMP_1:
CMP DL, CL
JA CAMBIO_MIN_ABC   ; Si DL > C, entonces C es el mínimo
JMP MIN_ENCONTRADO

CAMBIO_MIN_ABC:
MOV DL, CL

MIN_ENCONTRADO:
; DL contiene el mínimo

; Ahora el máximo
MOV DH, AL          ; DH será el máximo provisional
CMP AL, BL
JB CAMBIO_MAX_AB    ; Si A < B, entonces B es el máximo
JMP SIGUIENTE_COMP_2

CAMBIO_MAX_AB:
MOV DH, BL

SIGUIENTE_COMP_2:
CMP DH, CL
JB CAMBIO_MAX_ABC   ; Si DH < C, entonces C es el máximo
JMP MAX_ENCONTRADO

CAMBIO_MAX_ABC:
MOV DH, CL

MAX_ENCONTRADO:
; DH contiene el máximo