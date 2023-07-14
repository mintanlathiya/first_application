import 'package:flutter/material.dart';

class RotationTransitionUiDome extends StatefulWidget {
  const RotationTransitionUiDome({super.key});

  @override
  State<RotationTransitionUiDome> createState() =>
      _RotationTransitionUiDomeState();
}

class _RotationTransitionUiDomeState extends State<RotationTransitionUiDome>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller!, curve: Curves.easeIn);

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: RotationTransition(
              turns: _animation!,
              child: const FlutterLogo(
                size: 200,
              ),
            ),
          ),
          const Center(
            child: Text(
              'RotationTransition',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
