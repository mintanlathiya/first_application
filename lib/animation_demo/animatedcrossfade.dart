import 'package:flutter/material.dart';

class AnimatedCrossFadeUiDemo extends StatefulWidget {
  const AnimatedCrossFadeUiDemo({super.key});

  @override
  State<AnimatedCrossFadeUiDemo> createState() =>
      _AnimatedCrossFadeUiDemoState();
}

class _AnimatedCrossFadeUiDemoState extends State<AnimatedCrossFadeUiDemo> {
  bool _bool = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 100,
          ),
          TextButton(
            onPressed: () {
              _bool = !_bool;
              setState(() {});
            },
            child: const Text(
              'switch',
              style: TextStyle(color: Colors.amber),
            ),
          ),
          AnimatedCrossFade(
              firstChild: Image.asset('assets/images/3.jpeg'),
              secondChild: Image.asset('assets/images/4.jpeg'),
              crossFadeState:
                  _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1))
        ],
      ),
    );
  }
}
