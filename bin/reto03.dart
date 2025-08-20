
/*
 * DIFICULTAD EXTRA (opcional):
 * Crea una agenda de contactos por terminal.
 * - Debes implementar funcionalidades de búsqueda, inserción, actualización
 *   y eliminación de contactos.
 * - Cada contacto debe tener un nombre y un número de teléfono.
 * - El programa solicita en primer lugar cuál es la operación que se quiere realizar,
 *   y a continuación los datos necesarios para llevarla a cabo.
 * - El programa no puede dejar introducir números de teléfono no numéricos y con más
 *   de 9 dígitos (o el número de dígitos que quieras).
 * - También se debe proponer una operación de finalización del programa.
 */
import 'dart:io';

void main(){
  String? option;
  Map<String, String> contactos = {};

  do{
    option = menu();

    switch(option){
      case "1":
        buscarContacto(contactos);
        break;
      case "2":
        agregarContacto(contactos);
        break;
      case "3":
        actualizarContacto(contactos);
        break;
      case "4":
        eliminarContacto(contactos);
        break;
      case "5":
        print("Saliendo...");
        break;
      default:
        print("Opción invalida, seleccione un número del 1 al 5");
    }
  }while(option != "5");

}

String? menu(){
  print('\n    AGENDA DE CONTACTOS    ');
  print('Menu: ');
  print('1. Buscar contacto');
  print('2. Agregar contacto');
  print('3. Actualizar contacto');
  print('4. Eliminar contacto');
  print('5. Salir');
  stdout.write('Seleccione una opción: ');
  return stdin.readLineSync();
}

String? obtenerContacto(Map<String, String> contactos, String mensaje){
  stdout.write("$mensaje: ");
  String? nombre = stdin.readLineSync();
  if(nombre != null && contactos.containsKey(nombre)){
    return nombre;
  }
  print("El contacto $nombre no existe en la agenda.");
  return null;
}

bool validarNumero(String? numero){
  final regex = RegExp(r'^[9]\d{8}$');
  return numero != null && regex.hasMatch(numero);
}


void buscarContacto(Map<String, String>contactos){
  String? nombre = obtenerContacto(contactos, "Ingrese el nombre a buscar");
  if(nombre != null){
    print("El número de $nombre es: ${contactos[nombre]}");
  }
}

void agregarContacto(Map<String?, String?>contactos){
  stdout.write("Ingrese el nombre: ");
  String? nombre = stdin.readLineSync();
  stdout.write("Ingrese el número: ");
  String? numero = stdin.readLineSync();
  
  if(validarNumero(numero)){
    contactos[nombre!] = numero!;
    print("Contacto agregado: $nombre -> $numero");
  }else{
    print("Número inválido. Debe tener 9 dígitos.");
  }
}

void actualizarContacto(Map<String, String>contactos){
  String? nombre = obtenerContacto(contactos, "Ingrese el nombre a actualizar");
  if(nombre != null) {
    stdout.write("Ingrese el nuevo número: ");
    String? numero = stdin.readLineSync();

    if (validarNumero(numero)) {
      contactos[nombre] = numero!;
      print("Contacto actualizado: $nombre -> $numero");
    } else {
      print("Número inválido. Debe tener 9 dígitos.");
    }
  }

}

void eliminarContacto(Map<String, String>contactos){
  String? nombre = obtenerContacto(contactos, "Ingrese el nombre a eliminar");
  if(nombre != null){
    contactos.remove(nombre);
    print("Contacto eliminado: $nombre");

  }
}

