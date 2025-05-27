; Leer dos números en AL y BL
MOV AL, 0xF0        ; Primer número (ejemplo)
MOV BL, 0x20        ; Segundo número (ejemplo)

ADD AL, BL          ; Sumar los dos números
                    ; Esta instrucción afecta la bandera CF automáticamente

JC MOSTRAR_ACARREO  ; Si hay acarreo (CF = 1), saltar a mensaje
JMP NO_ACARREO      ; Si no hay acarreo

MOSTRAR_ACARREO:
; Mostrar "Hubo acarreo"
JMP FIN

NO_ACARREO:
; Mostrar "No hubo acarreo"

FIN:
; Fin del programa
