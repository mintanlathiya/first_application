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

String player1 = "Player O";
String player2 = "Player X";
bool isActivated = false; // true means player O

int playerOCount = 0;
int playerXCount = 0;
int drawMatch = 0;

List value = ["", "", "", "", "", "", "", "", ""];

class TicToeTac {
  static void clearControl() {
    value = ["", "", "", "", "", "", "", "", ""];
  }

  static void winnerNumber(context) {
    (isActivated) ? playerXCount++ : playerOCount++;

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:
            Text((isActivated) ? "Player X is Winner" : "Player O is Winner")));
    clearControl();
  }

  static void playerSwapping(int index) {
    if (value[index] == "") {
      if (isActivated == true) {
        value.removeAt(index);
        value.insert(index, "O");
        isActivated = false;
      } else {
        value.removeAt(index);
        value.insert(index, "X");
        isActivated = true;
      }
    }
  }

  static void winnerState(context) {
    if (value[0] == value[1] && value[1] == value[2] && value[0] != "") {
      winnerNumber(context);
    } else if (value[3] == value[4] && value[4] == value[5] && value[4] != "") {
      winnerNumber(context);
    } else if (value[6] == value[7] && value[7] == value[8] && value[8] != "") {
      winnerNumber(context);
    } else if (value[0] == value[3] && value[3] == value[6] && value[0] != "") {
      winnerNumber(context);
    } else if (value[1] == value[4] && value[4] == value[7] && value[1] != "") {
      winnerNumber(context);
    } else if (value[2] == value[5] && value[5] == value[8] && value[2] != "") {
      winnerNumber(context);
    } else if (value[0] == value[4] && value[4] == value[8] && value[0] != "") {
      winnerNumber(context);
    } else if (value[2] == value[4] && value[4] == value[6] && value[2] != "") {
      winnerNumber(context);
    } else if (value[0] != "" &&
        value[1] != "" &&
        value[2] != "" &&
        value[3] != "" &&
        value[4] != "" &&
        value[5] != "" &&
        value[6] != "" &&
        value[7] != "" &&
        value[8] != "") {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Draw Match Play Again..."),
        ),
      );
      drawMatch += 1;
      clearControl();
    }
  }
}


  bool oTurn = true;

  List displayElement = ['', '', '', '', '', '', '', '', ''];

  int oScore = 0;
  int xScore = 0;
  int filledBoxes = 0;

  void tapped(int index, context) {
    if (oTurn && displayElement[index] == '') {
      displayElement[index] = 'O';
      filledBoxes++;
    } else if (!oTurn && displayElement[index] == '') {
      displayElement[index] = 'X';
      filledBoxes++;
    }

    oTurn = !oTurn;
    _checkWinner(context);
  }

  void _checkWinner(context) {
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

  void _showWinDialog(String winner, context) {
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

  void _showDrawDialog(context) {
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

  void clearBoard() {
    for (int i = 0; i < 9; i++) {
      displayElement[i] = '';
    }

    filledBoxes = 0;
  }

  void clearScoreBoard() {
    xScore = 0;
    oScore = 0;
    for (int i = 0; i < 9; i++) {
      displayElement[i] = '';
    }

    filledBoxes = 0;
  }

