import 'package:flutter/material.dart';

class RadioButtunDemo extends StatefulWidget {
  const RadioButtunDemo({super.key});

  @override
  State<RadioButtunDemo> createState() => _RadioButtunDemoState();
}

class _RadioButtunDemoState extends State<RadioButtunDemo> {
  String gender = 'Gender', male = 'Male', female = 'FeMale';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Text('Gender'),
          Radio(
            value: male,
            groupValue: gender,
            onChanged: (value) {
              gender = value!;
              setState(() {});
            },
          ),
          const Text('Male'),
          Radio(
            value: female,
            groupValue: gender,
            onChanged: (value) {
              gender = value!;
              setState(() {});
            },
          ),
          const Text('FeMale'),
        ],
      ),
    );
  }
}
