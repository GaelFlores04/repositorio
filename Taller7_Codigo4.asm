section .data
    msg_overflow db 'Overflow detectado!', 0xA, 0

section .bss
    num1 resb 1  ; Primer número
    num2 resb 1  ; Segundo número

section .text
    global _start

_start:
    ; Leer los dos números
    ; (Código de lectura aquí...)

    mov al, [num1]  ; Cargar primer número en AL
    add al, [num2]  ; Sumar el segundo número
    jo overflow_flag  ; Si se activa el flag de overflow, saltar

    jmp fin  ; Si no hay overflow, finalizar

overflow_flag:
    mov ecx, msg_overflow
    jmp print_result

fin:
    ; Fin del programa

print_result:
    ; (Código para imprimir el resultado)
    ; (Código de salida aquí...)