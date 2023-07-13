import 'package:flutter/material.dart';

class AnimatedPaddingUiDemo extends StatefulWidget {
  const AnimatedPaddingUiDemo({super.key});

  @override
  State<AnimatedPaddingUiDemo> createState() => _AnimatedPaddingUiDemoState();
}

class _AnimatedPaddingUiDemoState extends State<AnimatedPaddingUiDemo> {
  double padvalue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              padvalue = padvalue == 0.0 ? 100.0 : 0.0;
              setState(() {});
            },
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
            child: const Text('Change Padding'),
          ),
          Text('padding = $padvalue'),
          AnimatedPadding(
            padding: EdgeInsets.all(padvalue),
            duration: const Duration(seconds: 2),
            curve: Curves.easeInOut,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              color: Colors.orangeAccent,
            ),
          ),
        ],
      ),
    );
  }
}
