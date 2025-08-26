/*
 * EJERCICIO:
 * Explora el concepto de herencia según tu lenguaje. Crea un ejemplo que
 * implemente una superclase Animal y un par de subclases Perro y Gato,
 * junto con una función que sirva para imprimir el sonido que emite cada Animal.
 *
 * DIFICULTAD EXTRA (opcional):
 * Implementa la jerarquía de una empresa de desarrollo formada por Empleados que
 * pueden ser Gerentes, Gerentes de Proyectos o Programadores.
 * Cada empleado tiene un identificador y un nombre.
 * Dependiendo de su labor, tienen propiedades y funciones exclusivas de su
 * actividad, y almacenan los empleados a su cargo.
 */

void main(){
  //ejercicio();
  dificultadExtra();

}
void ejercicio(){
  var perro = Perro("Firulais");
  var gato = Gato("Ken");

  perro.hacerSonido();
  gato.hacerSonido();
}
class Animal{
  String nombre;
  Animal(this.nombre);

  void hacerSonido(){
    print("$nombre hacer un sonido.");
  }
}
class Perro extends Animal{
  Perro(super.nombre);

  @override
  void hacerSonido() {
    print("$nombre ladra: ¡Guau guau!");
  }
}
class Gato extends Animal{
  Gato(super.nombre);

  @override
  void hacerSonido() {
    print("$nombre maúlla: ¡Miau Miau!");
  }
}


void dificultadExtra(){
  var gerente = Gerente("1", "David");
  var gerenteProyecto = GerenteProyecto("2", "Luis", "App Móvil");
  var programador1 = Programador("3", "Carlos", "Dart");
  var programador2 = Programador("4", "María", "Java");

  gerente.agregarEmpleado(gerenteProyecto);
  gerenteProyecto.agregarEmpleado(programador1);
  gerenteProyecto.agregarEmpleado(programador2);

  gerente.supervisar();
  gerenteProyecto.gestionarProyecto();
  programador1.programar();
  programador2.programar();
}
class Empleado{
  String id;
  String nombre;

  Empleado(this.id, this.nombre);

  void realizarTarea(){
    print("$nombre está realizando una tarea.");
  }
}
class Gerente extends Empleado{
  List<Empleado> empleadoACargo = [];

  Gerente(super.id, super.nombre);

  void agregarEmpleado(Empleado e){
    empleadoACargo.add(e);
    print("${e.nombre} ahora está a cargo de $nombre.");
  }

  void supervisar(){
    print("El gerente $nombre está supervisando la empresa.");
  }
}
class GerenteProyecto extends Empleado{
  String proyecto;
  List<Empleado> empleadoACargo = [];
  GerenteProyecto(super.id, super.nombre, this.proyecto);

  void agregarEmpleado(Empleado e){
    empleadoACargo.add(e);
    print("${e.nombre} ahora trabaja en el proyecto $proyecto bajo $nombre.");
  }

  void gestionarProyecto(){
    print("El gerente de proyecto $nombre está gestionando el proyecto $proyecto.");
  }
}
class Programador extends Empleado{
  String lenguaje;
  Programador(super.id, super.nombre, this.lenguaje);

  void programar(){
    print("El programador $nombre está escribiendo código en $lenguaje.");
  }
}

