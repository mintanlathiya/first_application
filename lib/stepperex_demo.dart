import 'package:first_application/listofmap_demo.dart/row_data.dart';
import 'package:flutter/material.dart';

class StepperExDemo extends StatefulWidget {
  const StepperExDemo({super.key});

  @override
  State<StepperExDemo> createState() => _StepperExDemoState();
}

class _StepperExDemoState extends State<StepperExDemo> {
  int stepIndex1 = 0, stepIndex2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stepper(
              // type: StepperType.horizontal,
              currentStep: stepIndex1,
              onStepContinue: stepIndex1 < 4
                  ? () {
                      stepIndex1++;
                      setState(() {});
                    }
                  : null,
              onStepCancel: stepIndex1 > 0
                  ? () {
                      stepIndex1--;
                      setState(() {});
                    }
                  : null,
              steps: List.generate(
                stepperStepList.length,
                (index) => Step(
                    state: stepIndex1 <= index
                        ? StepState.editing
                        : StepState.complete,
                    title: Text(stepperStepList[index]['title']),
                    content: Text(stepperStepList[index]['content']),
                    subtitle: Text(stepperStepList[index]['subtitle'])),
              ),
            ),
            Stepper(
                currentStep: stepIndex2,
                onStepContinue: stepIndex2 < 4
                    ? () {
                        stepIndex2++;
                        setState(() {});
                      }
                    : null,
                onStepCancel: stepIndex2 > 0
                    ? () {
                        stepIndex2--;
                        setState(() {});
                      }
                    : null,
                steps: stepperStepList
                    .map(
                      (e) => Step(
                          state: stepIndex2 <= stepperStepList.length
                              ? StepState.editing
                              : StepState.complete,
                          title: Text(e['title']),
                          content: Text(e['content']),
                          subtitle: Text(e['subtitle'])),
                    )
                    .toList())
          ],
        ),
      ),
    );
  }
}
