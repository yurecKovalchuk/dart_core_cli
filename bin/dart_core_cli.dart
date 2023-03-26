import 'dart:io';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;

void main(List<String> arguments) {
  var celsius = stdin.readLineSync();

  if (celsius == null) {
    print("Sorry, your put value is null");
  } else {
    double? result1 = double.tryParse(celsius);
    if (result1 == null) {
      print("sorry i can't tryParse");
    } else {
      print(9/5*result1+32);
    }
  }
}
