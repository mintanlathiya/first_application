import 'package:flutter/material.dart';

class AnimatedOpacityUiDemo extends StatefulWidget {
  const AnimatedOpacityUiDemo({super.key});

  @override
  State<AnimatedOpacityUiDemo> createState() => _AnimatedOpacityUiDemoState();
}

class _AnimatedOpacityUiDemoState extends State<AnimatedOpacityUiDemo> {
  double opacityLevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimatedOpacity(
            opacity: opacityLevel,
            duration: const Duration(seconds: 2),
            child: const FlutterLogo(
              size: 50,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
                setState(() {});
              },
              child: const Text('Fade Logo'))
        ],
      ),
    );
  }
}
