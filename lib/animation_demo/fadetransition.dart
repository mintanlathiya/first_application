import 'package:flutter/material.dart';

class FadeTransitionUiDemo extends StatefulWidget {
  const FadeTransitionUiDemo({super.key});

  @override
  State<FadeTransitionUiDemo> createState() => _FadeTransitionUiDemoState();
}

class _FadeTransitionUiDemoState extends State<FadeTransitionUiDemo>
    with TickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller!,
      curve: Curves.easeIn,
    );
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
        child: FadeTransition(
          opacity: _animation!,
          child: const FlutterLogo(
            size: 300,
          ),
        ),
      ),
    );
  }
}
