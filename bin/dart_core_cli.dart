import 'dart:io';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;

void main(List<String> arguments) {
  int? number1 = int.parse(stdin.readLineSync()!);
  int? number2 = int.parse(stdin.readLineSync()!);
  print(number1 % number2);
}
