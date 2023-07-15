import 'package:flutter/material.dart';

class ScaleTransitionUiDemo extends StatefulWidget {
  const ScaleTransitionUiDemo({super.key});

  @override
  State<ScaleTransitionUiDemo> createState() => _ScaleTransitionUiDemoState();
}

class _ScaleTransitionUiDemoState extends State<ScaleTransitionUiDemo>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller!, curve: Curves.easeInOut);

    super.initState();
  }

  Animation<double>? _animation;

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: _animation!,
          child: const FlutterLogo(
            size: 100,
          ),
        ),
      ),
    );
  }
}
