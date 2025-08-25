/*
 * EJERCICIO:
 * Implementa los mecanismos de introducción y recuperación de elementos propios de las
 * pilas (stacks - LIFO) y las colas (queue - FIFO) utilizando una estructura de array
 * o lista (dependiendo de las posibilidades de tu lenguaje).
 *
 * DIFICULTAD EXTRA (opcional):
 * - Utilizando la implementación de pila y cadenas de texto, simula el mecanismo adelante/atrás
 *   de un navegador web. Crea un programa en el que puedas navegar a una página o indicarle
 *   que te quieres desplazar adelante o atrás, mostrando en cada caso el nombre de la web.
 *   Las palabras "adelante", "atrás" desencadenan esta acción, el resto se interpreta como
 *   el nombre de una nueva web.
 * - Utilizando la implementación de cola y cadenas de texto, simula el mecanismo de una
 *   impresora compartida que recibe documentos y los imprime cuando así se le indica.
 *   La palabra "imprimir" imprime un elemento de la cola, el resto de palabras se
 *   interpretan como nombres de documentos.
 */
import 'dart:io';

void main() {
  //pilas();
  //colas();
  //navegacionWeb();
  colaDeImpresion();
}

void pilas() {
  List<int> pila = [];

  //Push: Agregar elementos a la pila
  pila.add(10);
  pila.add(15);
  pila.add(13);

  print("Pila después de agregar elementos: $pila");

  //Pop: Scar el último elemento (LIFO)
  int ultimo = pila.removeLast();
  print("Elemento eliminado: $ultimo");
  print("Pila después de eliminar: $pila");

  //Ver el elemento superior sin eliminarlo (peek)
  int cima = pila.last;
  print("Elemento en la cima: $cima");
}

void colas() {
  List<int> cola = [];

  //Enqueue: Agregar elementos a la cola
  cola.add(10);
  cola.add(15);
  cola.add(20);

  print("Cola después de encolar elementos: $cola");

  //Dequeue: Sacar el primer elementos (FIFO)
  int primero = cola.removeAt(0);
  print("Elemento desencolado: $primero");
  print("Cola después de desencolar: $cola");

  //Peek: Ver el primer elemento sin eliminarlo
  int frente = cola.first;
  print("Elemento al frente: $frente");
}

void navegacionWeb(){
  List<String> atras = [];
  List<String> adelante = [];
  String? paginaActual;

  while(true){
    stdout.write("ingresa una página o comando(atras, adelante, salir): ");
    String? entrada = stdin.readLineSync();

    if(entrada == null) continue;
    if(entrada == "salir") break;

    if(entrada == "atras"){
      if(atras.isNotEmpty){
        adelante.add(paginaActual!);
        paginaActual = atras.removeLast();
      }else{
        print("No hay páginas anteriores.");
      }
    }else if (entrada == "adelante"){
      if(adelante.isNotEmpty){
        atras.add(paginaActual!);
        paginaActual = adelante.removeLast();
      }else{
        print("No hay paginas siguientes");
      }
    }else{
      if(paginaActual != null) atras.add(paginaActual);
      paginaActual = entrada;
      adelante.clear();
    }
    print("Página actual: $paginaActual");
  }


}

void colaDeImpresion(){
  List<String> colaImpresion = [];

  while(true){
    stdout.write("Ingresa un documento o comando (imprimir, salir): ");
    String? entrada = stdin.readLineSync();

    if(entrada == null) continue;
    if(entrada == "salir") break;

    if(entrada == "imprimir"){
      if(colaImpresion.isNotEmpty){
        String doc = colaImpresion.removeAt(0);
        print("Imprimiendo: $doc");
      }else{
        print("No hay documentos en la cola");
      }
    }else{
      colaImpresion.add(entrada);
      print("Documento agregado: $entrada");
    }

    print("Cola actual: $colaImpresion");
  }
}
