import 'dart:io';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;

void main(List<String> arguments) {
  String onConsole = _functionCheck();
  print(onConsole);
}

String _functionCheck() {

  print("Введіть номер");
  String numbers = stdin.readLineSync()!;
  int number = int.tryParse(numbers)!;

  for(int i = 2; i <= number; i++ ){
    int a = (number % i);
    if (a == 0){
      print (i);
    }
  }
return _functionCheck();
}
