class Counter {
  static int count = 0;
  static void increment() {
    count++;
    print(count);
  }
}

class Counter1 {
  static int add = 0, sub = 0;
  static void increment1() {
    add++;

    print(add);
  }

  static void decrease1() {
    add--;
    print(add);
  }

  static void increment2() {
    (sub++) * (sub++);
    print(sub);
  }

  static void decrease2() {
    (sub--) * (sub--);
    print(sub);
  }
}
