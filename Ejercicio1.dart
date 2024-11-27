import 'dart:io';

void main(){
  var genres = <String>{};
  var num =1;
  while(true){
    print("1. Introducir generos\n2. Ver generos\n3. Salir");
    var num = int.parse(stdin.readLineSync()!);
    if(num == 1){
      print("¿Que genero quiere añadir?");
      var input = stdin.readLineSync()!;
      genres.add(input);
      if(genres.length == 6){
        genres.remove(input);
        print("No puede introducir mas de 6 generos");
      }
    }
    if(num == 2){
      print(genres);
    }
    if(num == 3){
      break;
    }
  }


}
