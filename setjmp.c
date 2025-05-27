#include <stdio.h>
#include <setjmp.h>
jmp_buf buffer;
void procesar_retiro(int saldo, int monto) {
if (monto > saldo) {
printf("Error: saldo insuficiente.\n");
longjmp(buffer, 1); // Simula excepcion
}

int nuevo_saldo = saldo - monto;
printf("Retiro exitoso. Nuevo saldo: $%d\n", nuevo_saldo);
}

int main() {
int saldo = 500; // Saldo disponible
int retiro = 600; // Monto a retirar

if (setjmp(buffer)) {
// Manejo de "excepcion"
printf("Operacion cancelada.\n");
} else {
// Regla de negocio: no permitir retiros mayores al saldo
printf("Procesando retiro de $%d...\n", retiro);
procesar_retiro(saldo, retiro);
printf("Operacion completada con exito.\n");
}

return 0;
}