import 'dart:io';

void main(){
  // Declaracion del set
  var genres = <String>{};

  // Bucle del menu
  while(true){
    print("1. Introducir generos\n2. Ver generos\n3. Salir");
    var num = int.parse(stdin.readLineSync()!);

    // Insercion de datos al set
    if(num == 1){
      print("¿Que genero quiere añadir?");
      var input = stdin.readLineSync()!;
      genres.add(input);

      // Comprobacion de que el set no sea mayor a 6
      if(genres.length == 6){

        // Retira el dato que aumenta el set a 6
        genres.remove(input);
        print("No puede introducir mas de 6 generos");
      }
    }

    // Muestra por pantalla el set
    if(num == 2){
      print(genres);
    }

    // Termina el bucle
    if(num == 3){
      break;
    }
  }


}
