import 'dart:io';
import 'dart:math';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;
import 'package:test/expect.dart';

void main(List<String> arguments) {
  int result = 1;

    print("Генерація пароля");
    String? numbers = stdin.readLineSync()!;
    int number = int.tryParse(numbers)!;

    for (var i = 1; i <= number; i++) {
      result *= i;
    }

   print (result);
    }



