/*
 * EJERCICIO:
 * Explora el concepto de clase y crea un ejemplo que implemente un inicializador,
 * atributos y una función que los imprima (teniendo en cuenta las posibilidades
 * de tu lenguaje).
 * Una vez implementada, créala, establece sus parámetros, modifícalos e imprímelos
 * utilizando su función.
 *
 * DIFICULTAD EXTRA (opcional):
 * Implementa dos clases que representen las estructuras de Pila y Cola (estudiadas
 * en el ejercicio número 7 de la ruta de estudio)
 * - Deben poder inicializarse y disponer de operaciones para añadir, eliminar,
 *   retornar el número de elementos e imprimir todo su contenido.
 */
void main(){
  //ejercicio();
  //pila();
  cola();

}

void ejercicio(){
  //Crear un objeto con el constructor
  Libro libro1 = Libro("Clean Code", "Robert C. Martin", 2008);

  //Valores iniciales
  libro1.mostrarInfo();

  //Modificar atributos
  libro1.titulo = "The Pragmatic Programmer";
  libro1.autor = "Andrew Hunt y David Thomas";
  libro1.fecha = 1999;

  //Valores modificados
  libro1.mostrarInfo();
}
void pila(){
  var pila = Pila<String>();

  pila.push("Página 1");
  pila.push("Página 2");
  pila.imprimir();
  print("Elemento eliminado: ${pila.pop()}");
  pila.imprimir();
}
void cola(){
  var cola = Cola<String>();
  cola.enqueue("Doc1");
  cola.enqueue("Doc2");
  cola.imprimir();
  print("Elemento impreso: ${cola.dequeue()}");
  cola.imprimir();
}



class Libro{
  String titulo;
  String autor;
  int fecha;

  Libro(this.titulo, this.autor, this.fecha);

  void mostrarInfo(){
    print("Título: $titulo, Autor: $autor, Año: $fecha");
  }
}

class Pila<T>{
  List<T> _elementos = [];

  void push(T elemento){
    _elementos.add(elemento);
  }

  T? pop(){
    if(_elementos.isEmpty) return null;
    return _elementos.removeLast();
  }

  int size() => _elementos.length;

  void imprimir(){
    print("Contenido de la pila: $_elementos");
  }

  bool isEmpty() => _elementos.isEmpty;
}

class Cola<T>{
  List<T> _elementos = [];

  void enqueue(T elemento){
    _elementos.add(elemento);
  }

  T? dequeue(){
    if(_elementos.isEmpty) return null;
    return _elementos.removeAt(0);
  }

  int size() => _elementos.length;

  void imprimir(){
    print("Contenido de la cola: $_elementos");
  }

  bool isEmpty() => _elementos.isEmpty;
}

