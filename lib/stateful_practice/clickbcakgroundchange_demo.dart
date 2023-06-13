import 'package:flutter/material.dart';

class ClickBackGroundChange extends StatefulWidget {
  const ClickBackGroundChange({super.key});

  @override
  State<ClickBackGroundChange> createState() => _ClickBackGroundChangeState();
}

class _ClickBackGroundChangeState extends State<ClickBackGroundChange> {
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (click == false) ? Colors.amber : Colors.white,
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              click = !click;
            });
          },
          child: Icon(
            (click == false) ? Icons.favorite : Icons.table_chart,
            size: 60,
          ),
        ),
      ),
    );
  }
}
