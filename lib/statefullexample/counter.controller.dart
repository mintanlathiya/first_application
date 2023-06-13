import 'package:flutter/material.dart';

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
    if (add < 50) {
      add++;
      //add = add + 1;
      //add += 1;
      print(add);
    }
  }

  static void decrease1() {
    if (add > -50) {
      add--;
      print(add);
    }
  }

  static void increment2() {
    if (sub < 50) {
      sub = sub + 2;
      print(sub);
    }
  }

  static void decrease2() {
    if (sub > -50) {
      sub = sub - 2;
      print(sub);
    }
  }
}

List<Color> colorList = [
  Colors.red,
  Colors.yellow,
  Colors.black,
  Colors.blue,
  Colors.brown,
  Colors.purple,
  Colors.green,
  Colors.teal,
  Colors.grey
];

class ColorSwap {
  static int? firstIndex, secoundIndex;

  static void colorController(int index) {
    if (firstIndex == null) {
      firstIndex = index;
      print(firstIndex);
    } else {
      secoundIndex = index;
      print(secoundIndex);
    }
    if (firstIndex != null && secoundIndex != null) {
      // colorList[firstIndex!] = colorList[secoundIndex!];
      // colorList[secoundIndex!] = colorList[firstIndex!];

      Color temp = colorList[firstIndex!];
      colorList[firstIndex!] = colorList[secoundIndex!];
      colorList[secoundIndex!] = temp;
      firstIndex = null;
      secoundIndex = null;
    }
  }
}


class CrossColor {
  static List data = List.generate(20, (index) => index);
  static List outputData = [];

  static void colorListDemo() {
    for (var index in data) {
      if (index % 4 == 0 || (index - 3) % 4 == 0) {
        outputData.add(index);
      }
    }
  }
}

// class ZeroCancle {
//   IconData? zero, cancle;
//   static void playGame(int index) {
//     if (index % 2 == 0) {
//       print(Icons.exposure_zero);
//     } else {
//       print(Icons.close);
//     }
//   }
// }
