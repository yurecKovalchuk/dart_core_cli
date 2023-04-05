import 'dart:io';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;

void main(List<String> arguments) {
  String onConsole = _functionCheck();
  print(onConsole);
}

String _functionCheck() {
  String numberListt = "";
  print("Введіть номер");
  String numbers = stdin.readLineSync()!;
  double number = double.tryParse(numbers)!;

  do {
    numberListt = (number % 2).toInt().toString() + numberListt;
    number = number / 2;
  } while (number >= 1);

  return numberListt;
}