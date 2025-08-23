
/*
 * EJERCICIO:
 * Entiende el concepto de recursividad creando una función recursiva que imprima
 * números del 100 al 0.
 *
 * DIFICULTAD EXTRA (opcional):
 * Utiliza el concepto de recursividad para:
 * - Calcular el factorial de un número concreto (la función recibe ese número).
 * - Calcular el valor de un elemento concreto (según su posición) en la
 *   sucesión de Fibonacci (la función recibe la posición).
 */

void main(){
  imprimirNumeros(100);
  print("Factorial de 10: ${factorial(10)}");
  print("Finacci en posición 7: ${fibonacci(7)}");
}

void imprimirNumeros(int n){
  if(n<0) return;
  print(n);
  imprimirNumeros(n-1);
}

int factorial(int n){
  if(n == 0 || n == 1) return 1;
  return n * factorial(n-1);
}

int fibonacci(int n){
  if(n == 0) return 0;
  if(n == 1) return 1;
  return fibonacci(n - 1) + fibonacci(n - 2);
}