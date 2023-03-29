import 'dart:io';
import 'dart:math';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;
import 'package:test/expect.dart';

void main(List<String> arguments) {
  print("ведіть текст");
  String? str = stdin.readLineSync()!;
  var strRev = "";
  for (int i = str.length - 1; i >= 0; i--) {
    strRev += str[i];
  }
  print(strRev);
}
