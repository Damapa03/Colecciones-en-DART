import 'dart:io';

void main(){
  var tareas = [];
  while(true){
    print("1. Introducir tarea\n2. Ver tarea\n3. Salir\n");
    var num = int.parse(stdin.readLineSync()!);
    if(num == 1){
      print("¿Que genero quiere añadir?");
      var input = stdin.readLineSync()!;
      tareas.add(input);
    }
    if(num == 2){
      for(int i = 0; i < tareas.length; i++){
        print("${i+1}. ${tareas[i]}");
      }

    }
    if(num == 3){
      break;
    }
  }
}