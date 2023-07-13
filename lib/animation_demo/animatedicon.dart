import 'package:flutter/material.dart';

class AnimatedIconUiDemo extends StatefulWidget {
  const AnimatedIconUiDemo({super.key});

  @override
  State<AnimatedIconUiDemo> createState() => _AnimatedIconUiDemoState();
}

class _AnimatedIconUiDemoState extends State<AnimatedIconUiDemo>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  bool _isPlay = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
          onTap: () {
            if (_isPlay == false) {
              _controller!.forward();
              _isPlay = true;
            } else {
              _controller!.reverse();
              _isPlay = false;
            }
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _controller!,
            size: 100,
          )),
    );
  }
}
