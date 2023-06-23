import 'package:first_application/statefullexample/counter.controller.dart';
import 'package:flutter/material.dart';

class QuizPage2 extends StatefulWidget {
  const QuizPage2({super.key});

  @override
  QuizPage2State createState() => QuizPage2State();
}

class QuizPage2State extends State<QuizPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.expand_circle_down_outlined),
        title: const Text('RTO MCQs Quiz'),
        actions: const [Icon(Icons.menu_book)],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              primary: true,
              itemCount: QuizQuestion2.quizQuestion2.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(
                    15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Q${index + 1}: ${QuizQuestion2.quizQuestion2[index].question}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Column(
                        children: List.generate(
                          QuizQuestion2.quizQuestion2[index].options.length,
                          (optionIndex) {
                            return Row(
                              children: [
                                Expanded(
                                  child: RadioListTile(
                                    title: Text(
                                      QuizQuestion2.quizQuestion2[index]
                                          .options[optionIndex],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    value: optionIndex,
                                    groupValue:
                                        QuizQuestion2.userAnswers[index],
                                    onChanged: (value) {
                                      QuizQuestion2.userAnswers[index] = value!;
                                      QuizQuestion2.isSelected[index] = true;
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          (QuizQuestion2.isSelected[0] == true &&
                  QuizQuestion2.isSelected[1] == true &&
                  QuizQuestion2.isSelected[2] == true &&
                  QuizQuestion2.isSelected[3] == true &&
                  QuizQuestion2.isSelected[4] == true &&
                  QuizQuestion2.isSelected[5] == true &&
                  QuizQuestion2.isSelected[6] == true &&
                  QuizQuestion2.isSelected[7] == true &&
                  QuizQuestion2.isSelected[8] == true &&
                  QuizQuestion2.isSelected[9] == true)
              ? MaterialButton(
                  onPressed: () {
                    QuizQuestion2.isCorrect();
                    QuizQuestion2.isSubmited = !QuizQuestion2.isSubmited;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Your Score is : ${QuizQuestion2.points}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        showCloseIcon: true,
                        backgroundColor: Colors.white,
                        onVisible: () {
                          QuizQuestion2.onSubmit();
                          setState(() {});
                        },
                      ),
                    );
                    setState(() {});
                  },
                  color: Colors.blue,
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
