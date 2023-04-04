import 'dart:io';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;

void main(List<String> arguments) {
  String onConsole = _functionCheck();
  print(onConsole);
}

String _functionCheck() {
  String vad = "";
  print("Введіть текст");
  String text1 = stdin.readLineSync()!;
  print("Введіть текст");
  String text2 = stdin.readLineSync()!;
  List<String> splitText1 = text1.split(' ').toList();
  List<String> splitText2 = text2.split(' ').toList();
  int splLengthText1 = splitText1.length;
  int splLengthText2 = splitText2.length;
  for (int i = 0; i <= splLengthText1-1; i++) {
    var result = splitText1[i];
    for (int j = 0; j <= splLengthText2-1; j++) {
      if (result == splitText2[j] && result.length >= vad.length) {
        vad = result;
      }
    }
  }
  return vad;
}
