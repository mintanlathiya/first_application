import 'package:flutter/material.dart';

class MyFirstUi extends StatelessWidget {
  const MyFirstUi({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'mintan lathiya',
          style: TextStyle(
            // backgroundColor: Colors.orange,
            // color: Colors.blue,
            fontSize: 50,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.wavy,
            // decorationColor: Colors.brown,
            decorationThickness: 2,
            height: 5,
            letterSpacing: 12,
            overflow: TextOverflow.clip,
            textBaseline: TextBaseline.ideographic,
            wordSpacing: 12,
            shadows: [
              Shadow(color: Colors.red, blurRadius: 5, offset: Offset(-10, 15)),
              Shadow(color: Colors.blue, blurRadius: 5, offset: Offset(-10, 20))
            ],
          ),
        ),
      ),
    );
  }
}
