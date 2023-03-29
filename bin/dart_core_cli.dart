import 'dart:io';
import 'dart:math';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;
import 'package:test/expect.dart';

void main(List<String> arguments) {
  print("Введіть текст для перевірки на рівність");
  String? str = stdin.readLineSync()!;
  print("Введіть текст для перевірки на рівність");
  String? str1 = stdin.readLineSync()!;
  var st1 = str1.codeUnits;
  var st11 = st1.length;
  var st = str.codeUnits;
  var stt = st.length;
  print(st11);
  print(stt);
  if(st11 == stt){
    print("Рівні");
  } else {print("не рівні");
  }

}
