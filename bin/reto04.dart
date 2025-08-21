/*
 * DIFICULTAD EXTRA (opcional):
 * Crea un programa que analice dos palabras diferentes y realice comprobaciones
 * para descubrir si son:
 * - Palíndromos
 * - Anagramas
 * - Isogramas
*/

void main(){
  print(esPalindromo("Ana"));
  print(esAnagrama("Roma", "Amor"));
  print(esIsograma("murcielago"));

}

String normalizar(String texto){
  return texto.toLowerCase().replaceAll(RegExp(r'\s+'), '');
}

bool esPalindromo(String palabra){
  String p = normalizar(palabra);
  return p == p.split('').reversed.join();
}

bool esAnagrama(String primeraPalabra, String segundaPalabra){

  String p1 = normalizar(primeraPalabra);
  String p2 = normalizar(segundaPalabra);

  List<String> caracteres1 = p1.split('');
  List<String> caracteres2 = p2.split('');
  caracteres1.sort();
  caracteres2.sort();

  return  caracteres1.join() == caracteres2.join();
}

bool esIsograma(String palabra){
  String p = normalizar(palabra);
  return p.split('').toSet().length == p.length;
}