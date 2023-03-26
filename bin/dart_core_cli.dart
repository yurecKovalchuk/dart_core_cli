import 'dart:io';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;

void main(List<String> arguments) {
  var number1 = stdin.readLineSync();
  var number2 = stdin.readLineSync();
  var number3 = stdin.readLineSync();
  if (number1 == null || number2 == null || number3 == null) {
    print("Sorry, your put value is null");
  } else {
    double? result1 = double.tryParse(number1);
    double? result2 = double.tryParse(number2);
    double? result3 = double.tryParse(number3);
    if (result1 == null || result2 == null || result3 == null) {
      print("sorry i can't tryParse");
    } else {
      print((result1 + result2 + result3)/3);
    }
  }
}
