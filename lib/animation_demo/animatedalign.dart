import 'package:flutter/material.dart';

class AnimatedAlignUiDemo extends StatefulWidget {
  const AnimatedAlignUiDemo({super.key});

  @override
  State<AnimatedAlignUiDemo> createState() => _AnimatedAlignUiDemoState();
}

class _AnimatedAlignUiDemoState extends State<AnimatedAlignUiDemo> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            selected = !selected;
            setState(() {});
          },
          child: Container(
            height: 250,
            width: double.infinity,
            color: Colors.blueGrey,
            child: AnimatedAlign(
              alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: const FlutterLogo(
                size: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
