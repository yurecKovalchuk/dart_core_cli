import 'dart:io';
import 'dart:math';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;
import 'package:test/expect.dart';

void main(List<String> arguments) {
  print("ведіть текст");
  String? str = stdin.readLineSync()!;
 String? st = str.toUpperCase();
 print(st);
}
