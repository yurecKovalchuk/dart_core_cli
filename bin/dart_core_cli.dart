import 'dart:io';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;

void main(List<String> arguments) {
  print("Введіть цифру");
  try {
    final number = _inputNumber();
    final result = _functionFor(number);
    print(result);
  } catch (e) {
    print("Не вірне введення: $e");
  }
}

int _inputNumber() {
  String input = stdin.readLineSync()!;
  return int.parse(input);
}

String _functionFor(int number){
  if(number == 1) print("Не коректне число");
  if(number <= 0) print("Не коректне число");
  for (int i = 2; i <= number; i++){
    var resultDivision = (number % i);
    if (resultDivision == 0 && number != i){
      return "Не просте число";
    }
  }
  return "Просте число";
}
