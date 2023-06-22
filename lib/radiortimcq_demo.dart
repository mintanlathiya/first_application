import 'package:first_application/statefullexample/counter.controller.dart';
import 'package:flutter/material.dart';

class RadioRtoMcqDemo extends StatefulWidget {
  const RadioRtoMcqDemo({super.key});

  @override
  State<RadioRtoMcqDemo> createState() => _RadioRtoMcqDemoState();
}

class _RadioRtoMcqDemoState extends State<RadioRtoMcqDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'RTO Exam',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: RatioQuestion.rtoQuestionData.length,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 650,
                        child:
                            Text(RatioQuestion.rtoQuestionData[index]['Que'])),
                    Row(
                      children: [
                        Radio(
                          value: RatioQuestion.rtoQuestionData[index]['a'],
                          groupValue: RatioQuestion.rtoQuestionData[index]
                              ['isSelected'],
                          onChanged: (value) {
                            RatioQuestion.rtoQuestionData[index]['isSelected'] =
                                value!;
                            print(value);
                            setState(() {});
                          },
                        ),
                        SizedBox(
                            width: 350,
                            child: Text(
                                RatioQuestion.rtoQuestionData[index]['a'])),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: RatioQuestion.rtoQuestionData[index]['b'],
                          groupValue: RatioQuestion.rtoQuestionData[index]
                              ['isSelected'],
                          onChanged: (value) {
                            RatioQuestion.rtoQuestionData[index]['isSelected'] =
                                value!;
                            print(value);
                            setState(() {});
                          },
                        ),
                        SizedBox(
                            width: 350,
                            child: Text(
                                RatioQuestion.rtoQuestionData[index]['b'])),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: RatioQuestion.rtoQuestionData[index]['c'],
                          groupValue: RatioQuestion.rtoQuestionData[index]
                              ['isSelected'],
                          onChanged: (value) {
                            RatioQuestion.rtoQuestionData[index]['isSelected'] =
                                value!;
                            print(value);
                            setState(() {});
                          },
                        ),
                        SizedBox(
                            width: 350,
                            child: Text(
                                RatioQuestion.rtoQuestionData[index]['c'])),
                      ],
                    )
                  ],
                ),
              ),
            ),
            // (RatioQuestion.rtoQuestionData[index]['isSelected'])
            MaterialButton(
              height: 80,
              minWidth: 150,
              color: Colors.blue,
              shape: const BeveledRectangleBorder(
                  side: BorderSide(),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              onPressed: () {
                RatioQuestion.isSubmited;
                RatioQuestion.isSubmited = !RatioQuestion.isSubmited;
                //RatioQuestion.isVisibleMethod();
                RatioQuestion.clearMethod();
                RatioQuestion.ansMethod();

                setState(() {});
              },
              child: const Text(
                'Submit',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            // : const SizedBox(),
            RatioQuestion.isSubmited
                ? Text(
                    'score out of 50 is ${RatioQuestion.points.toString()}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
