import 'dart:io';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;

void main(List<String> arguments) {
  String? number1 = stdin.readLineSync();
  String? number2 = stdin.readLineSync();
  int? result1 = int.tryParse(number1!);
  int? result2 = int.tryParse(number2!);
  print(result1!-result2!);
}