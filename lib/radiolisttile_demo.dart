import 'package:flutter/material.dart';

class RadioListTileDemo extends StatefulWidget {
  const RadioListTileDemo({super.key});

  @override
  State<RadioListTileDemo> createState() => _RadioListTileDemoState();
}

class _RadioListTileDemoState extends State<RadioListTileDemo> {
  String gender = 'Gender', male = 'Male', female = 'FeMale';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Gender'),
          RadioListTile(
            title: const Text('Male'),
            value: male,
            groupValue: gender,
            onChanged: (value) {
              gender = value!;
              setState(() {});
            },
          ),
          RadioListTile(
            title: const Text('FeMale'),
            value: female,
            groupValue: gender,
            onChanged: (value) {
              gender = value!;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
