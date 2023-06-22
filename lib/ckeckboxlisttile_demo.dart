import 'package:flutter/material.dart';

class CheckBoxListTileDemo extends StatefulWidget {
  const CheckBoxListTileDemo({super.key});

  @override
  State<CheckBoxListTileDemo> createState() => _CheckBoxListTileDemoState();
}

class _CheckBoxListTileDemoState extends State<CheckBoxListTileDemo> {
  bool isCricket = false, isFootball = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('hobby'),
          CheckboxListTile(
            title: const Text('cricket'),
            value: isCricket,
            onChanged: (value) {
              isCricket = value!;
              setState(() {});
            },
          ),
          CheckboxListTile(
            title: const Text('footBall'),
            value: isFootball,
            onChanged: (value) {
              isFootball = value!;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
