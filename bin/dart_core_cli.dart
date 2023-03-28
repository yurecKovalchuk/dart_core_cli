import 'dart:io';
import 'dart:math';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;

void main(List<String> arguments) {
  var seed = Random(DateTime.now().millisecondsSinceEpoch).nextInt(100);
  var counter = 0;
  while (true) {
    print("вгадай число");
    int? number = int.parse(stdin.readLineSync()!);
    counter++;
    if (number > seed) {
      print("Бери меньше");
    } else if (number < seed) {
      print("Бери більше");
    } else {
      print("Вгадав");
      print("$counter");
      print("Спробуйте ще раз");
      break;
    }
  }
}

