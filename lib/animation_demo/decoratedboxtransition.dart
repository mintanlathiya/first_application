import 'package:flutter/material.dart';

class DecorationBoxTransitionUiDemo extends StatefulWidget {
  const DecorationBoxTransitionUiDemo({super.key});

  @override
  State<DecorationBoxTransitionUiDemo> createState() =>
      _DecorationBoxTransitionUiDemoState();
}

class _DecorationBoxTransitionUiDemoState
    extends State<DecorationBoxTransitionUiDemo> with TickerProviderStateMixin {
  DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: Colors.white,
      border: Border.all(style: BorderStyle.none),
      borderRadius: BorderRadius.circular(60),
      boxShadow: const [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10,
          spreadRadius: 3,
          offset: Offset(0, 6),
        )
      ],
    ),
    end: BoxDecoration(
      color: Colors.white,
      border: Border.all(style: BorderStyle.none),
      borderRadius: BorderRadius.zero,
    ),
  );

  AnimationController? _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: DecoratedBoxTransition(
              decoration: decorationTween.animate(_controller!),
              child: Container(
                width: 250,
                height: 250,
                padding: const EdgeInsets.all(10),
                child: const FlutterLogo(),
              )),
        ),
      ),
    );
  }
}
