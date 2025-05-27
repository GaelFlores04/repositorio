#include <stdio.h>

int dividir(int a, int b) {
int resultado = a / b; // breakpoint aqui
return resultado;
}

int main() {
int x = 20;
int y = 5;
int z = dividir(x, y);

printf("Resultado: %d\n"

, z);

return 0;
}