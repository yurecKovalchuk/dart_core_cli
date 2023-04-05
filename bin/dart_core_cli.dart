import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;

void main(List<String> arguments) {
  final bin = getBinNumber(5);
  print(bin);
}

String getBinNumber(int number) {
  double integer = number.toDouble();
  String result = "";
  do {
    result = (integer % 2).toInt().toString() + result;
    integer = integer / 2;
  } while (integer >= 1);

  return result;
}
