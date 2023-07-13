import 'package:flutter/material.dart';

class AnimationBuilderDemo extends StatefulWidget {
  const AnimationBuilderDemo({super.key});

  @override
  State<AnimationBuilderDemo> createState() => _AnimationBuilderDemoState();
}

class _AnimationBuilderDemoState extends State<AnimationBuilderDemo>
    with SingleTickerProviderStateMixin {
  AnimationController? animationcontroller;
  @override
  void initState() {
    animationcontroller =
        AnimationController(vsync: this, duration: const Duration(seconds: 20))
          ..repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
            animation: animationcontroller!,
            builder: (context, child) {
              print(animationcontroller!.value);
              return Transform.rotate(
                angle: -animationcontroller!.value * 20,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              );
            }),
      ),
    );
  }
}

