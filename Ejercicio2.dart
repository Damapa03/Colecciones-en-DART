import 'dart:io';

void main(){
  // Declaracion de la lista
  var tareas = [];
  while(true){
    print("1. Introducir tarea\n2. Ver tarea\n3. Salir\n");
    var num = int.parse(stdin.readLineSync()!);

    // Insercion de datos a la lista
    if(num == 1){
      print("¿Que genero quiere añadir?");
      var input = stdin.readLineSync()!;
      tareas.add(input);
    }

    // Muestra por pantalla la lista
    if(num == 2){
      for(int i = 0; i < tareas.length; i++){
        print("${i+1}. ${tareas[i]}");
      }

    }

    // Termina el bucle
    if(num == 3){
      break;
    }
  }
}