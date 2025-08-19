//Flutter: https://dart.dev/

//TIPOS DE COMENTARIOS

//Single-line comments
/*
 * Multi-line comments
 */
/// Documentation comments.


void main() {
  //FORMAS DE DECLARAR VARIABLES
  //var - Inferencia de tipo
  var nombre = "David";

  //Tipo explícito
  String ciudad = "Lima";

  //Tipo dinámico
  dynamic dato = "16";
  dato = 16;

  //Variable de solo lectura
  final fechaActual = DateTime.now();

  //Constante en el tiempo de compilación
  const pi = 3.1416;

  //late - Inicialización diferida
  late String saludo;
  saludo = "Hola devs";

  //DATOS PRIMITIVOS
  int edad = 20;
  double altura = 1.75;
  String pais = "Peru";
  bool esPrimo = true;

  print("Bienvenido Dart");
}
