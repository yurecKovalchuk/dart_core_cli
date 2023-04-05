import 'dart:io';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;

void main(List<String> arguments) {
  List<int> numberListt = [];
  int summ = 0;

  for (int i = 0; i <= 100; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      numberListt.add(i);
    }
  }
  for (int i = 0; i <= numberListt.length-1; i++){
     summ += numberListt[i];
  }
  print (summ);
}
