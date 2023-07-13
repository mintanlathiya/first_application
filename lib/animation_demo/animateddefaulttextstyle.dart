import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleUiDemo extends StatefulWidget {
  const AnimatedDefaultTextStyleUiDemo({super.key});

  @override
  State<AnimatedDefaultTextStyleUiDemo> createState() =>
      _AnimatedDefaultTextStyleUiDemoState();
}

class _AnimatedDefaultTextStyleUiDemoState
    extends State<AnimatedDefaultTextStyleUiDemo> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 120,
            child: AnimatedDefaultTextStyle(
                style: TextStyle(
                  fontSize: _fontSize,
                  color: _color,
                  fontWeight: FontWeight.bold,
                ),
                duration: const Duration(milliseconds: 300),
                child: const Text('flutter')),
          ),
          TextButton(
              onPressed: () {
                _fontSize = _first ? 90 : 60;
                _color = _first ? Colors.blue : Colors.red;
                _first = !_first;
                setState(() {});
              },
              child: const Text('switch'))
        ],
      ),
    );
  }
}
