section .data
    msg_positive db 'El numero es positivo', 0xA, 0
    msg_negative db 'El numero es negativo', 0xA, 0
    msg_zero db 'El numero es cero', 0xA, 0

section .bss
    num resb 1  ; Variable para el número a clasificar

section .text
    global _start

_start:
    ; Leer el número
    ; (Código de lectura aquí...)

    mov al, [num]  ; Cargar el número en AL
    cmp al, 0  ; Comparar con 0
    je zero_flag  ; Si es 0, saltar a zero_flag
    jl negative_flag  ; Si es negativo, saltar a negative_flag
    jmp positive_flag  ; Si es positivo, continuar con positive_flag

zero_flag:
    mov ecx, msg_zero
    jmp print_result

negative_flag:
    mov ecx, msg_negative
    jmp print_result

positive_flag:
    mov ecx, msg_positive

print_result:
    ; (Código para imprimir el resultado)
    ; (Código de salida aquí...)