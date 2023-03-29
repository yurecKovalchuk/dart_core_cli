import 'dart:io';
import 'dart:math';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;
import 'package:test/expect.dart';

void main(List<String> arguments) {
  print("Перевірка слова на поліндромність");
  String? str = stdin.readLineSync()!;
  var st = str.codeUnits;
  var st1 = st.reversed;
  String st2 = String.fromCharCodes(st1);
  if (str == st2) {
    print("поліндром");
  } else {
    print("не поліндром");
  }
}
