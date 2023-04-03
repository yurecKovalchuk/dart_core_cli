import 'dart:io';

void main(List<String> arguments) {
  print("Please, enter number for check number status");
  try {
    final number = _getNumber();
    final status = _getNumberStatus(number);
    print("Status number: $status");
  } catch (_) {
    print("Invalid input data");
  }
}

int _getNumber() {
  String? input = stdin.readLineSync()!;
  return int.parse(input);
}

String _getNumberStatus(int number) {
  if (number == 1) return 'does not belong to a complex or to a simple number';
  if (number < 1) return 'domain of non-natural numbers';

  for (int i = 2; i <= number; i++) {
    final isDivideBySelf = number % i;
    if (isDivideBySelf == 0 && i != number) {
      return 'complex number';
    }
  }
  return 'simple';
}
