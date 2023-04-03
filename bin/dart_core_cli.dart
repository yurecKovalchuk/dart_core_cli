import 'dart:io';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;

void main(List<String> arguments) {
    String onConsole = _functionCheck();
    print(onConsole);
}

String _functionCheck() {
  print("Введіть текст для перевірки");
  String? inputText1 = stdin.readLineSync()!;
  var codeUnText1 = inputText1.codeUnits;

  print("Введіть наступний текст для перевірки");
  String? inputText2 = stdin.readLineSync()!;
  var codeUnText2 = inputText2.codeUnits;

  for (int i = 0; i <= codeUnText1.length-1; i++) {
    var result = codeUnText1[i];
    for (int j = 0; j <= codeUnText2.length-1; j++) {
      if (result == codeUnText2[j]) {
        return "Співпало";
      } else {
        return "Не співпало";
      }
    }
  }
  return "Не коректно";
}
