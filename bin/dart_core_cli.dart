import 'dart:io';
import 'dart:math';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;
import 'package:test/expect.dart';

void main(List<String> arguments) {
  print(
      "Яким методом ви хочете це зробити? Якщо простим, натиснгіть 1, якщо складним, натисніть 2");
  String str = stdin.readLineSync()!;
  int? st = int.tryParse(str);
  if (str == null) {
    print("Не коректно");
  } else {
    if (st == 1) {
      removeSpacesByString();
    }
    if (st == 2) {
      removeSpacesCycle();
    }
  }
}

void removeSpacesByString() {
  print("Введіть текст");
  String? str = stdin.readLineSync()!;
  String? st = str.replaceAll(' ', '');
  print(st);
}

void removeSpacesCycle() {
  print("Введіть текст");
  String? str = stdin.readLineSync()!;
  List<int> inputData = str.codeUnits;
  List<int> outputData = [];
  for (int i = 0; i <= inputData.length - 1; i++) {
    if (inputData[i] != 32) {
      outputData.add(inputData[i]);
    }
  }
  String output = String.fromCharCodes(outputData);
  print(output);
}
