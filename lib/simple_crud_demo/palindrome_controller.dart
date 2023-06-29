String palindromeNum(int number) {
  int rev = 0, temp, rem;
  temp = number;
  while (number > 0) {
    rem = number % 10;
    rev = rem + (rev * 10);
    number = number ~/ 10;
  }

  if (rev == temp) {
    return ('palindrome');
  } else {
    return ('not palindrome');
  }
}
