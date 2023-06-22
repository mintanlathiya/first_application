import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  const StepperDemo({super.key});

  @override
  State<StepperDemo> createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int stepIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        currentStep: stepIndex,
        onStepContinue: stepIndex != 2
            ? () {
                stepIndex++;
                setState(() {});
              }
            : null,
        onStepCancel: stepIndex != 0
            ? () {
                stepIndex--;
                setState(() {});
              }
            : null,
        steps: const [
          Step(
              title: Text('first text'),
              content: Text('hi i am first content')),
          Step(title: Text('second text'), content: Text('secound text')),
          Step(
              title: Text('third text'),
              content: Text('third text'),
              label: Icon(Icons.person),
              subtitle: Text('subTile'))
        ],
      ),
    );
  }
}
