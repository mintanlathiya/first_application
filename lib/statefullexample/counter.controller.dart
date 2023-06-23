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

class RatioQuestion {
  static List answerList = ['c', 'b', 'c', 'c', 'c', 'a', 'c', 'c', 'b', 'b'];
  static List ans = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  static int points = 0;
  static bool isSubmited = false;
  static bool isSelected = false;
  static bool isVisible = false;
  static List<Map<String, dynamic>> rtoQuestionData = [
    {
      'Que':
          '1. When near a pedestrian crossing, as the pedestrians are waiting to cross the road, what should you do?',
      'a': 'Sound horn and proceed',
      'b': 'Slow down, sound horn and pass',
      'c':
          'Stop the vehicle and wait till the pedestrians cross the road and then proceed',
      'Answer': 'c',
      'isSelected': false,
    },
    {
      'Que':
          '2. A person driving a vehicle in a public place without a licence, is liable for:',
      'a': 'Penalty only',
      'b': 'Penalty for the driver and the owner and/ or seizure of vehicle',
      'c': 'A warning',
      'Answer': 'b',
      'isSelected': false,
    },
    {
      'Que':
          '3. While parking your vehicle on a downward gradient, in addition to the application of hand brake, the gear engaged should be: ',
      'a': 'In neutral',
      'b': 'In first',
      'c': 'In reverse',
      'Answer': 'c',
      'isSelected': false,
    },
    {
      'Que':
          '4. When a vehicle is involved in an accident causing injury to any person, what should you do?',
      'a':
          'Take the vehicle to the nearest police station and report the accident',
      'b': 'Stop the vehicle and report to the police station',
      'c':
          'Take all reasonable steps to secure medical attention to the injured and report to the nearest police station within 24 hours',
      'Answer': 'c',
      'isSelected': false,
    },
    {
      'Que':
          '5. On a road designated as one way, which of the following holds true? ',
      'a': 'Parking is prohibited',
      'b': 'Overtaking is prohibited',
      'c': 'Should not drive in reverse gear',
      'Answer': 'c',
      'isSelected': false,
    },
    {
      'Que':
          '6. When a blind person is crossing the road holding a white cane, the driver should:',
      'a': 'Consider the white cane as a traffic sign to stop the vehicle',
      'b': 'Blow the horn and proceed',
      'c': 'Slow down and proceed with caution',
      'Answer': 'a',
      'isSelected': false,
    },
    {
      'Que':
          '7. What happens if you are carrying overload in goods carriages? ',
      'a': 'It is not a punishable offence',
      'b': 'Only attracts a fine',
      'c': 'Driving licence can be suspended or cancelled',
      'Answer': 'c',
      'isSelected': false,
    },
    {
      'Que':
          '8. When you reach an intersection where there is no signal light or a traffic police man, you should:',
      'a': 'Give way to traffic approaching the intersection from other roads',
      'b': 'Give proper signal, sound the horn and then proceed',
      'c':
          'Give way to the traffic approaching the intersection on your right side and proceed after giving necessary signals',
      'Answer': 'c',
      'isSelected': false,
    },
    {
      'Que':
          '9. When the road is marked with a broken center line in the colour white',
      'a':
          'When the road is marked with a broken center line in the colour white',
      'b': 'When the vehicle is being driven on a steep hill',
      'c':
          'When the road is marked with a continuous center line in the colour yellow',
      'Answer': 'b',
      'isSelected': false,
    },
    {
      'Que': '10. If the road is marked with broken white lines, you:',
      'a': 'shall not change track',
      'b': 'can change track, if required',
      'c': 'shall stop the vehicle',
      'Answer': 'b',
      'isSelected': false,
    },
  ];
  static void isVisibleMethod() {
    for (var index in rtoQuestionData) {
      if (index['a'] == true || index['b'] == true || index['c'] == true) {
        isVisible = true;
      }
    }
  }

  static ansMethod() {
    if (rtoQuestionData[0]['Answer'] == answerList[0]) {
      points += 5;
    }
    if (rtoQuestionData[1]['Answer'] == answerList[1]) {
      points += 5;
    }
    if (rtoQuestionData[2]['Answer'] == answerList[2]) {
      points += 5;
    }
    if (rtoQuestionData[3]['Answer'] == answerList[3]) {
      points += 5;
    }
    if (rtoQuestionData[4]['Answer'] == answerList[4]) {
      points += 5;
    }
    if (rtoQuestionData[5]['Answer'] == answerList[5]) {
      points += 5;
    }
    if (rtoQuestionData[6]['Answer'] == answerList[6]) {
      points += 5;
    }
    if (rtoQuestionData[7]['Answer'] == answerList[7]) {
      points += 5;
    }
    if (rtoQuestionData[8]['Answer'] == answerList[8]) {
      points += 5;
    }
    if (rtoQuestionData[9]['Answer'] == answerList[9]) {
      points += 5;
    } else {
      points -= 2;
    }
  }

  static void submitTapped(int index, context) {
    if (isSubmited) {
      points++;
    } else if (!isSubmited) {
      points++;
    }

    isSubmited = !isSubmited;
    ansMethod();
  }

  static void clearMethod() {
    if (isSubmited == false) {
      points = 0;
    }
  }
}

///////////////////////////////////////////
class QuizQuestion2 {
  final String question;
  final List<String> options;
  final int answerIndex;

  QuizQuestion2({
    required this.question,
    required this.options,
    required this.answerIndex,
  });
  static List<int> userAnswers = List.filled(10, -1);
  static List isSelected = List.generate(10, (index) => false);
  static int points = 0;
  static bool isSubmited = false;

  static List<QuizQuestion2> quizQuestion2 = [
    QuizQuestion2(
      question:
          'When are you allowed to drive even if your brake lights do not work?',
      options: [
        'A. When there is no other vehicle on the road.',
        'B. When you are driving in a school zone.',
        'C. When you are driving in a residential area.',
        'D. Never.'
      ],
      answerIndex: 3,
    ),
    QuizQuestion2(
      question:
          'On a wet road what is the safest way to stop while driving a two wheeler?',
      options: [
        'A. Apply the brakes suddenly.',
        'B. Apply the brakes gradually.',
        'C.Pump the brakes repeatedly.',
        'D. Use the rear brake only',
      ],
      answerIndex: 3,
    ),
    QuizQuestion2(
      question:
          'Road surface is very important to motor cyclists. Which of these are more likely to reduce the stability of your machine?',
      options: [
        'A. A smooth road surface.',
        'B. A road surface with potholes.',
        'C. A road surface with loose gravel.',
        'D. A road surface with sand.',
      ],
      answerIndex: 2,
    ),
    QuizQuestion2(
      question:
          'Which of the following is correct about validity of driving licence?',
      options: [
        'A. Valid only in issued state.',
        'B. Valid in all states in India.',
        'C. Valid in all countries in the world.',
        'D. Valid for a period of 10 years.',
      ],
      answerIndex: 1,
    ),
    QuizQuestion2(
      question: 'What is the maximum speed limit for cars in a city?',
      options: [
        'A. 50 kmph.',
        'B. 60 kmph.',
        'C. 70 kmph.',
        'D. 80 kmph.',
      ],
      answerIndex: 0,
    ),
    QuizQuestion2(
      question: 'What is the maximum speed limit in a residential area?',
      options: [
        'A. 25 kmph.',
        'B. 35 kmph.',
        'C. 45 kmph.',
        'D. 55 kmph.',
      ],
      answerIndex: 0,
    ),
    QuizQuestion2(
      question:
          'What is the minimum distance you should stay behind a school bus when it is stopped with its red lights flashing?',
      options: [
        'A. 10 feet',
        'B. 20 feet',
        'C. 30 feet',
        'D. 40 feet',
      ],
      answerIndex: 2,
    ),
    QuizQuestion2(
      question: 'When driving in a construction zone, you should:',
      options: [
        'A. Slow down',
        'B. Be prepared to stop',
        'C. Obey the instructions of the workers',
        'D. All of the above',
      ],
      answerIndex: 3,
    ),
    QuizQuestion2(
      question:
          'Which of the following is not a legal way to use a mobile phone while driving?',
      options: [
        'A. Using a hands-free device.',
        'B. Using the phone to make a call.',
        'C. Using the phone to send a text message.',
        'D. Using the phone to check the GPS.',
      ],
      answerIndex: 2,
    ),
    QuizQuestion2(
      question: 'What is the purpose of wearing a seat belt?',
      options: [
        'A. To protect you from being ejected from the car in a crash.',
        'B. To reduce the severity of injuries in a crash.',
        'C. To make it easier for the police to identify you if you are in a crash.',
        'D. All of the above.',
      ],
      answerIndex: 3,
    ),
  ];

  static void isCorrect() {
    for (int i = 0; i < QuizQuestion2.quizQuestion2.length; i++) {
      if (QuizQuestion2.userAnswers[i] ==
          QuizQuestion2.quizQuestion2[i].answerIndex) {
        QuizQuestion2.points += 5;
      } else {
        QuizQuestion2.points -= 2;
      }
    }
  }

  static void onSubmit() {
    if (isSubmited == true) {
      userAnswers = List.filled(10, -1);
      isSelected = List.generate(10, (index) => false);
      points = 0;
      isSubmited = false;
    }
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
