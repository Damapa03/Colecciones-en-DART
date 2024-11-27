import 'dart:io';

void main() {
  var notas = Map<String, double>();
  while (true) {
    print("1. Introducir nota de alumno\n2. Ver notas de alumno\n3. Salir\n");
    var num = int.parse(stdin.readLineSync()!);
    if (num == 1) {
      print("Introduce nombre de alumno");
      var input = stdin.readLineSync()!;
      print("Introduce su nota");
      notas[input] = double.parse(stdin.readLineSync()!);
    }
    if (num == 2) {
      print("Introduce el alumno que quiere saber su nota");
      var alumno = stdin.readLineSync()!;
      if (notas.containsKey(alumno)) {
        print(notas[alumno]);
      } else
        print("El alumno no existe");
    }
    if (num == 3) {
      break;
    }
  }
}
