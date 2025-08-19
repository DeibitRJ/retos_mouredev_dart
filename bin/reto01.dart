/*
* DIFICULTAD EXTRA (opcional):
* Crea un programa que imprima por consola todos los números comprendidos
* entre 10 y 55 (incluidos), pares, y que no son ni el 16 ni múltiplos de 3.
* */
void main() {
  // for(var i = 10; i <=55; i+=2){
  //   if(i%3 != 0 && i != 16){
  //     print(i);
  //   }
  // }
  option2();
}


void option2(){
  for(var i = 10; i<=55; i+=2){
    if(i == 16) continue;
    if(i % 3 == 0) continue;
    print(i);
  }
}

