import 'package:flutter/material.dart';

class AnimatedSeitcherUiDemo extends StatefulWidget {
  const AnimatedSeitcherUiDemo({super.key});

  @override
  State<AnimatedSeitcherUiDemo> createState() => _AnimatedSeitcherUiDemoState();
}

class _AnimatedSeitcherUiDemoState extends State<AnimatedSeitcherUiDemo> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Text(
                '$_count',
                style: const TextStyle(fontSize: 40, color: Colors.red),
                key: ValueKey(_count),
              ),
              transitionBuilder: (child, animation) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              },
            ),
            ElevatedButton(
                onPressed: () {
                  _count += 1;
                  setState(() {});
                },
                child: const Text('Add'))
          ],
        ),
      ),
    );
  }
}
