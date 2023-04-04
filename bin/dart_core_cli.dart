import 'dart:io';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;

void main(List<String> arguments) {
  String onConsole = _functionCheck();
  print(onConsole);
}

String _functionCheck() {
  int summ = 0;
  List<int> numberList = [];
  print("Введіть номер");
  String numbers = stdin.readLineSync()!;
  int number = int.tryParse(numbers)!;

  for(int i = 1; i < number; i++ ){
    int a = (number % i);
    if (a == 0){
     numberList.add(i);
    }
  }
  for(int i = 0; i <= numberList.length-1; i++){
    summ += numberList[i];
    print(summ);
  }
  if(summ == number){
    return "Це число досконале";
  }
return "Це число не є досконалим";
}
