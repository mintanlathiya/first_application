import 'package:first_application/listofmap_demo.dart/row_data.dart';
import 'package:first_application/listofmap_demo.dart/uesr_model.dart';
import 'package:first_application/statefullexample/counter.controller.dart';
import 'package:flutter/material.dart';

class QuizPage2 extends StatefulWidget {
  const QuizPage2({super.key});

  @override
  QuizPage2State createState() => QuizPage2State();
}

class QuizPage2State extends State<QuizPage2> {
  @override
  void initState() {
    print('Called First');
    for (var element in mcqData) {
      mcqDetail.add(Mcq.fromJson(element));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RTO MCQs Quiz'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              primary: true,
              itemCount: mcqDetail.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(
                    15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Q${index + 1}: ${mcqDetail[index].question}',
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
                          mcqDetail[index].options!.length,
                          (optionIndex) {
                            return Row(
                              children: [
                                Radio(
                                  value: optionIndex,
                                  groupValue: QuizQuestion.userAnswers[index],
                                  onChanged: (value) {
                                    QuizQuestion.userAnswers[index] = value!;
                                    QuizQuestion.isSelected[index] = true;
                                    setState(() {});
                                  },
                                ),
                                SizedBox(
                                  width: 280,
                                  child: Text(
                                    mcqDetail[index].options![optionIndex],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
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
          QuizQuestion.isSelectedAll == true
              ? MaterialButton(
                  onPressed: () {
                    QuizQuestion.isCorrect;
                    QuizQuestion.isSubmited = !QuizQuestion.isSubmited;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Your Score is : ${QuizQuestion.points}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        showCloseIcon: true,
                        backgroundColor: Colors.white,
                        onVisible: () {
                          QuizQuestion.onSubmit;
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
