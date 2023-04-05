import 'dart:io';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;

void main(List<String> arguments) {
  const pi = 3.14159265;
  print("Введіть радіус кола");
  String? number = stdin.readLineSync()!;
  double radius = double.tryParse(number)!;
  double radiusSquared = (radius * radius);
  double S = radiusSquared * pi;
  double I = 2 * pi * radius;
  print("Площа кола: $S");
  print("Довжина окружності: $I");
}
