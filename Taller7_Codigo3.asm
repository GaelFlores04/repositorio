section .data
    msg_even db 'El numero es par', 0xA, 0
    msg_odd db 'El numero es impar', 0xA, 0

section .bss
    num resb 1  ; Variable para el número

section .text
    global _start

_start:
    ; Leer número
    ; (Código de lectura aquí...)

    mov al, [num]  ; Cargar el número en AL
    test al, 1  ; Comprobar si el bit menos significativo es 1
    jz even_flag  ; Si PF está en 1, el número es par
    jmp odd_flag  ; Si PF está en 0, el número es impar

even_flag:
    mov ecx, msg_even
    jmp print_result

odd_flag:
    mov ecx, msg_odd

print_result:
    ; (Código para imprimir el resultado)
    ; (Código de salida aquí...)