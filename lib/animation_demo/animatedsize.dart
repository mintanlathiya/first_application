import 'package:flutter/material.dart';

class AnimatedSizeUiDemo extends StatefulWidget {
  const AnimatedSizeUiDemo({super.key});

  @override
  State<AnimatedSizeUiDemo> createState() => _AnimatedSizeUiDemoState();
}

class _AnimatedSizeUiDemoState extends State<AnimatedSizeUiDemo> {
  double _size = 300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              _size = _size == 300 ? 100 : 300;
              setState(() {});
            },
            child: Container(
              color: Colors.white,
              child: AnimatedSize(
                duration: const Duration(seconds: 1),
                curve: Curves.easeIn,
                child: FlutterLogo(
                  size: _size,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
