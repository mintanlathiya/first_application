import 'package:flutter/material.dart';

class SliderTransitionuidemo extends StatefulWidget {
  const SliderTransitionuidemo({super.key});

  @override
  State<SliderTransitionuidemo> createState() => _SliderTransitionuidemoState();
}

class _SliderTransitionuidemoState extends State<SliderTransitionuidemo>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);
    _offsetAnimation = Tween(
      begin: Offset.zero,
      end: const Offset(0, 1.5),
    ).animate(CurvedAnimation(
      parent: _controller!,
      curve: Curves.easeIn,
    ));
    super.initState();
  }

  Animation<Offset>? _offsetAnimation;

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SlideTransition(
          position: _offsetAnimation!,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: FlutterLogo(
              size: 150,
            ),
          ),
        ),
      ),
    );
  }
}
