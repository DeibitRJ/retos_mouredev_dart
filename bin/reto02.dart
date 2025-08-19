/*
 * DIFICULTAD EXTRA (opcional):
 * Crea una función que reciba dos parámetros de tipo cadena de texto y retorne un número.
 * - La función imprime todos los números del 1 al 100. Teniendo en cuenta que:
 *   - Si el número es múltiplo de 3, muestra la cadena de texto del primer parámetro.
 *   - Si el número es múltiplo de 5, muestra la cadena de texto del segundo parámetro.
 *   - Si el número es múltiplo de 3 y de 5, muestra las dos cadenas de texto concatenadas.
 *   - La función retorna el número de veces que se ha impreso el número en lugar de los textos.
 *
 */
void main(){
    var numerosImpresos = fizzbuzz('Fizz', 'Buzz');
    print('Número de veces que se ha impreso el número en lugar de los textos: $numerosImpresos');
}

int fizzbuzz(String tres, String cinco){
    var contador = 0;

    for(var i = 0; i<=100; i++){
      if(i%15 == 0){
          print('$tres$cinco');
      }else if(i%5 == 0){
        print(cinco);
      }else if(i%3 == 0){
        print(tres);
      }else{
        print(i);
        contador++;
      }
    }
    return contador;
}