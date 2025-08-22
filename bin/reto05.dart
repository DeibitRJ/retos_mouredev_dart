/*
 * DIFICULTAD EXTRA (opcional):
 * Crea dos programas que reciban dos parámetros (cada uno) definidos como
 * variables anteriormente.
 * - Cada programa recibe, en un caso, dos parámetros por valor, y en otro caso, por referencia.
 *   Estos parámetros los intercambia entre ellos en su interior, los retorna, y su retorno
 *   se asigna a dos variables diferentes a las originales. A continuación, imprime
 *   el valor de las variables originales y las nuevas, comprobando que se ha invertido
 *   su valor en las segundas.
 *   Comprueba también que se ha conservado el valor original en las primeras.
 */



//Por valor = copias → los originales se conservan.
//Por referencia = enlaces → los originales se modifican.

void main(){
  int x = 5;
  int y = 10;

  print("PASO POR VALOR");
  print("Originales: x = $x, y = $y");
  var resultadoValor = intercambiarPorValor(x, y);

  int nuevoX = resultadoValor.$1;
  int nuevoY = resultadoValor.$2;
  print("Nuevos: nuevo X: $nuevoX, nuevo Y: $nuevoY");
  print("Originales después: x = $x, y = $y");

  print("\n____________________________________\n");

  print("PASO POR REFERENCIA");
  List<int> numeros = [20,40];
  print("Originales:  ${numeros[0]}, ${numeros[1]}");
  var resultadoReferencia = intercambiarPorReferencia(numeros);

  List<int> nuevos = resultadoReferencia;

  print("Nuevos: ${nuevos[0]}, ${nuevos[1]}");
  print("Originales después: ${numeros[0]}, ${numeros[1]}");


}

(int, int) intercambiarPorValor(int x, int y){
  int temp = x;
  x = y;
  y = temp;
  return(x,y);
}

List<int> intercambiarPorReferencia(List<int> lista){
  int temp = lista[0];
  lista[0] = lista[1];
  lista[1] = temp;
  return [lista[0], lista[1]];
}

