import 'package:first_application/listofmap_demo.dart/row_data.dart';
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

//   static Color colorChangeData(int index) {
//     if (index % 2 == 0) {
//       return colors[0];
//     } else {
//       Color temp = colors[0];
//       colors[0] = colors[1];
//       colors[1] = temp;
//       return colors[0];
//     }
//   }

// static Color colorChangeIndex(int index) {
//   if (index == number[count]) {
//     count++;
//     return Colors.red;
//   } else {
//     return Colors.green;
//   }
//
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

///////////////////////////////////
List value = List.generate(9, (index) => "");
List<Color> cardColor = List.generate(9, (index) => Colors.grey);
bool xTurn = false; // true means player O
int fillBox = 0;
int playerOCount = 0;
int playerXCount = 0;
int drawMatch = 0;
List<double> elevation = List.generate(9, (index) => 0);

class TicToeTac {
  static Future<void> clearControl() async {
    await Future.delayed(const Duration(seconds: 2), () {
      value = List.generate(9, (index) => "");
      fillBox = 0;
      cardColor = List.generate(9, (index) => Colors.grey);
    });
  }

  static Future<void> winnerNumber(context) async {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text((xTurn) ? "Player X is Winner" : "Player O is Winner")));
    if (xTurn) {
      playerXCount++;
      xTurn = !xTurn;
    } else {
      playerOCount++;
      xTurn = !xTurn;
    }
    await clearControl();
  }

  static Future<void> playerSwapping(int index, context) async {
    if (xTurn && value[index] == "") {
      value[index] = "O";
      elevation[index] = 20;
      cardColor[index] = Colors.red.shade300;
      xTurn = !xTurn;
      fillBox += 1;
    } else if (!xTurn && value[index] == "") {
      value[index] = "X";
      elevation[index] = 20;
      cardColor[index] = Colors.yellow.shade300;
      xTurn = !xTurn;
      fillBox += 1;
    }
    if (fillBox > 4) {
      await winnerState(context);
    }
  }

  // static Future<void> winnerState(context) async {
  //   if (value[0] == value[1] && value[1] == value[2] && value[0] != "" ||
  //       value[3] == value[4] && value[4] == value[5] && value[4] != "" ||
  //       value[6] == value[7] && value[7] == value[8] && value[8] != "" ||
  //       value[0] == value[3] && value[3] == value[6] && value[0] != "" ||
  //       value[1] == value[4] && value[4] == value[7] && value[1] != "" ||
  //       value[2] == value[5] && value[5] == value[8] && value[2] != "" ||
  //       value[0] == value[4] && value[4] == value[8] && value[0] != "" ||
  //       value[2] == value[4] && value[4] == value[6] && value[2] != "") {
  //     await winnerNumber(context);
  //   } else if (fillBox == 9) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(
  //         content: Text("Draw Match Play Again..."),
  //       ),
  //     );
  //     drawMatch += 1;
  //     await clearControl();
  //   }
  // }
  static Future<void> winnerState(context) async {
    int choice = value[0] == value[1] &&
                value[1] == value[2] &&
                value[0] != "" ||
            value[3] == value[4] && value[4] == value[5] && value[4] != "" ||
            value[6] == value[7] && value[7] == value[8] && value[8] != "" ||
            value[0] == value[3] && value[3] == value[6] && value[0] != "" ||
            value[1] == value[4] && value[4] == value[7] && value[1] != "" ||
            value[2] == value[5] && value[5] == value[8] && value[2] != "" ||
            value[0] == value[4] && value[4] == value[8] && value[0] != "" ||
            value[2] == value[4] && value[4] == value[6] && value[2] != ""
        ? 1
        : fillBox == 9
            ? 2
            : 0;

    switch (choice) {
      case 1:
        await winnerNumber(context);

        break;
      case 2:
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Draw Match Play Again..."),
          ),
        );
        drawMatch += 1;
        await clearControl();
        break;
    }
  }
}

///////////////////////////////////////////////////2 metod tik tav///////////////
class TikTacmethod {
  static bool oTurn = true;

  static List<String> displayElement = ['', '', '', '', '', '', '', '', ''];
  static List cardColor = List.generate(9, (index) => Colors.red);
  static List elevation = List.generate(9, (index) => '0');

  static int oScore = 0;
  static int xScore = 0;
  static int filledBoxes = 0;

  static void tapped(int index, context) {
    if (oTurn && displayElement[index] == '') {
      displayElement[index] = 'O';
      cardColor[index] = Colors.amber;

      filledBoxes++;
    } else if (!oTurn && displayElement[index] == '') {
      displayElement[index] = 'X';
      cardColor[index] = Colors.brown;
      filledBoxes++;
    }

    oTurn = !oTurn;
    _checkWinner(context);
  }

  static void _checkWinner(context) {
    // Checking rows
    if (displayElement[0] == displayElement[1] &&
        displayElement[0] == displayElement[2] &&
        displayElement[0] != '') {
      _showWinDialog(displayElement[0], context);
      clearBoard();
    }
    if (displayElement[3] == displayElement[4] &&
        displayElement[3] == displayElement[5] &&
        displayElement[3] != '') {
      _showWinDialog(displayElement[3], context);
      clearBoard();
    }
    if (displayElement[6] == displayElement[7] &&
        displayElement[6] == displayElement[8] &&
        displayElement[6] != '') {
      _showWinDialog(displayElement[6], context);
      clearBoard();
    }

    // Checking Column
    if (displayElement[0] == displayElement[3] &&
        displayElement[0] == displayElement[6] &&
        displayElement[0] != '') {
      _showWinDialog(displayElement[0], context);
      clearBoard();
    }
    if (displayElement[1] == displayElement[4] &&
        displayElement[1] == displayElement[7] &&
        displayElement[1] != '') {
      _showWinDialog(displayElement[1], context);
      clearBoard();
    }
    if (displayElement[2] == displayElement[5] &&
        displayElement[2] == displayElement[8] &&
        displayElement[2] != '') {
      _showWinDialog(displayElement[2], context);
      clearBoard();
    }

    // Checking Diagonal
    if (displayElement[0] == displayElement[4] &&
        displayElement[0] == displayElement[8] &&
        displayElement[0] != '') {
      _showWinDialog(displayElement[0], context);
      clearBoard();
    }
    if (displayElement[2] == displayElement[4] &&
        displayElement[2] == displayElement[6] &&
        displayElement[2] != '') {
      _showWinDialog(displayElement[2], context);
      clearBoard();
    } else if (filledBoxes == 9) {
      _showDrawDialog(context);
      clearBoard();
    }
  }

  static void _showWinDialog(String winner, context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("\" $winner \" is Winner!!!"),
            actions: [
              TextButton(
                child: const Text("Play Again"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });

    if (winner == 'O') {
      oScore++;
    } else if (winner == 'X') {
      xScore++;
    }
  }

  static void _showDrawDialog(context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Draw"),
            actions: [
              TextButton(
                child: const Text("Play Again"),
                onPressed: () {
                  clearBoard();
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  static void clearBoard() {
    for (int i = 0; i < 9; i++) {
      displayElement[i] = '';
      cardColor[i] = Colors.red;
    }

    filledBoxes = 0;
  }

  static void clearScoreBoard() {
    xScore = 0;
    oScore = 0;
    for (int i = 0; i < 9; i++) {
      displayElement[i] = '';
      cardColor[i] = Colors.red;
    }

    filledBoxes = 0;
  }
}
/////////////////////////////////////////////////////

class OnSubmit {
  static String selectedGender = '';
  static String male = 'male';
  static String female = 'female';
  static List<String> selectedHobbies = [];

  static bool isCricket = false;
  static bool isFootball = false;
  static bool isCooking = false;
  static bool isSwimming = false;
  static bool isDance = false;
  static bool isVisible = false;
  static bool isSubmitted = false;

  static void hobbyDetails() {
    if (isCricket) {
      selectedHobbies.add('cricket');
    }
    if (isFootball) {
      selectedHobbies.add('football');
    }
    if (isCooking) {
      selectedHobbies.add('cooking');
    }
    if (isSwimming) {
      selectedHobbies.add('swamming');
    }
    if (isDance) {
      selectedHobbies.add('dance');
    }
    if (isSubmitted == true) {
      selectedHobbies.clear();
      isCricket = false;
      isFootball = false;
      isCooking = false;
      isSwimming = false;
      isDance = false;
      selectedGender = '';
    }
  }

  static void clearMethod() {
    if (isSubmitted == false) {
      selectedHobbies.clear();
      isCricket = false;
      isFootball = false;
      isCooking = false;
      isSwimming = false;
      isDance = false;
    }
  }
}

///////////////////////////////////////////

class QuizQuestion {
  final String question;
  final List<String> options;
  final int answerIndex;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.answerIndex,
  });
  static List<int> userAnswers = List.filled(10, -1);
  static List isSelected = List.generate(10, (index) => false);
  static int points = 0;
  static bool isSubmited = false;

  static void get isCorrect {
    for (int i = 0; i < mcqData.length; i++) {
      if (QuizQuestion.userAnswers[i] == mcqDetail[i].answerIndex) {
        QuizQuestion.points += 5;
      } else {
        QuizQuestion.points -= 2;
      }
    }
  }

  static void get onSubmit {
    if (isSubmited == true) {
      userAnswers = List.filled(10, -1);
      isSelected = List.generate(10, (index) => false);
      points = 0;
      isSubmited = false;
    }
  }

  static bool get isSelectedAll {
    bool? val;
    for (var element in isSelected) {
      if (element == true) {
        val = true;
      } else {
        val = false;
        break;
      }
    }
    return val!;
  }
}
///////////////////////////////////////////////////

class HobbyCheckBox {
  static bool isSelected = false;
  static List selectHobbiesList = [];
  static bool isSubmitted = false;
  static List<Map<String, dynamic>> hobbyData = [
    {
      'hobbyName': 'cricket',
      'isSelected': false,
    },
    {
      'hobbyName': 'football',
      'isSelected': false,
    },
    {
      'hobbyName': 'chess',
      'isSelected': false,
    },
    {
      'hobbyName': 'dance',
      'isSelected': false,
    },
    {
      'hobbyName': 'singing',
      'isSelected': false,
    },
    {
      'hobbyName': 'music',
      'isSelected': false,
    },
    {
      'hobbyName': 'Shopping',
      'isSelected': false,
    },
    {
      'hobbyName': 'Blogging',
      'isSelected': false,
    },
    {
      'hobbyName': 'Readingbooks',
      'isSelected': false,
    },
    {
      'hobbyName': 'cooking',
      'isSelected': false,
    },
  ];
  static void hobbyMehod() {
    for (var index in hobbyData) {
      if (index['isSelected'] == true) {
        selectHobbiesList.add(index['hobbyName']);
      }
    }
  }

  static void clearMethod() {
    if (!isSubmitted == false) {
      selectHobbiesList.clear();
    }
  }
}
