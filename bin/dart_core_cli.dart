import 'dart:io';
import 'dart:math';

import 'package:dart_core_cli/dart_core_cli.dart' as dart_core_cli;
import 'package:test/expect.dart';

void main(List<String> arguments) {

    print("Генерація пароля");
    print("Вибиріть, що ви хочете, щоби було присутнє в вашому паролі");
    print("1 - означає 'Так', 0 - значає 'Ні'");
    print("Великі літери повинні бути присутні в паролі?");
    String? capitalLetters = stdin.readLineSync()!;
    print("Маленькі букви повинні бути присутні в паролі?");
    String? small_letters = stdin.readLineSync()!;
    print("Цифри повинні бути присутні в паролі?");
    String? number = stdin.readLineSync()!;
    print("Спеціальні символи повинні бути присутні в паролі?");
    String? special_symbols = stdin.readLineSync()!;
    print("Кількість символів, що має бути в паролі?");
    String? password_s = stdin.readLineSync()!;
    int? password_size = int.tryParse(password_s)!;
    String upper = 'QWERTYUIOPASDFGHJKLZXCVBNM';
    String lower = 'abcdefghijklmnopqrstuvwxyz';
    String numbers = '1234567890';
    String symbols = '!@#\$%^&*()<>,./';
    int passLength = password_size;

    String password = '';
    List<String> list =
    _generateSeed(capitalLetters, small_letters, number, special_symbols)
        .split("")
        .toList();
    Random rand = Random();

    for (int i = 0; i < passLength; i++) {
      int index = rand.nextInt(list.length);
      password += list[index];
    }
    print(password);

  }

  String _generateSeed(
      String capital_letters,
      String small_letters,
      String number,
      String special_symbols,
      ) {
    String upper = 'QWERTYUIOPASDFGHJKLZXCVBNM';
    String lower = 'abcdefghijklmnopqrstuvwxyz';
    String numbers = '1234567890';
    String symbols = '!@#\$%^&*()<>,./';
    String seed = "";

    seed += _checkPropertyAvailability(capital_letters, upper);
    seed += _checkPropertyAvailability(small_letters, lower);
    seed += _checkPropertyAvailability(number, numbers);
    seed += _checkPropertyAvailability(special_symbols, symbols);

    return seed;
  }

  String _checkPropertyAvailability(String key,String sedPart) {
    if (key.contains("1")) {
      return sedPart;
    }
    return "";
  }
