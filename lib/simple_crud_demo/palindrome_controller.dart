import 'package:flutter/cupertino.dart';

class Palindrome {
  static String? msg;
  static final TextEditingController _textPalindromeEditingController =
      TextEditingController();

  static TextEditingController get textPalindromeEditingController =>
      _textPalindromeEditingController;

  static set palindromeString(String data) => _palindromeString(data);
  static set palindromeNum(int data) => _palindromeNum(data);

  static void _palindromeNum(int number) {
    int rev = 0, temp, rem;
    temp = number;
    while (number > 0) {
      rem = number % 10;
      rev = rem + (rev * 10);
      number = number ~/ 10;
    }

    if (rev == temp) {
      msg = ('palindrome number');
    } else {
      msg = ('not palindrome number');
    }
  }

  static void _palindromeString(String stringToReverse) {
    String reversedString = "";
    String beforeReverse = stringToReverse;
    for (int j = stringToReverse.length - 1; j >= 0; j--) {
      reversedString += stringToReverse[j];
    }

    print(reversedString);
    if (beforeReverse == reversedString) {
      msg = "String is Palindrome";
    } else {
      msg = "String is not Palindrome";
    }
  }
}
