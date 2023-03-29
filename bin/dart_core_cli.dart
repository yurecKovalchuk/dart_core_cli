import 'dart:io';
import 'dart:math';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;
import 'package:test/expect.dart';

void main(List<String> arguments) {
  print("введіть слово");
  String? word = stdin.readLineSync()!;
  var s = "";
  var st = word.codeUnits;
  var st2 = st.reversed;
  var st3 = String.fromCharCodes(st2);
  print(st3);
}
