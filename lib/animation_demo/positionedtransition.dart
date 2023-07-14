import 'package:flutter/material.dart';

class PositionTransitionUiDemo extends StatefulWidget {
  const PositionTransitionUiDemo({super.key});

  @override
  State<PositionTransitionUiDemo> createState() =>
      _PositionTransitionUiDemoState();
}

class _PositionTransitionUiDemoState extends State<PositionTransitionUiDemo>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat(reverse: true);

    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double smallLogo = 100, bigLogo = 200;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final Size biggest = constraints.biggest;
          return Stack(
            children: [
              PositionedTransition(
                  rect: RelativeRectTween(
                    begin: RelativeRect.fromSize(
                        Rect.fromLTWH(biggest.width / 2 - smallLogo / 2, 0,
                            smallLogo, smallLogo),
                        biggest),
                    end: RelativeRect.fromSize(
                        Rect.fromLTWH(biggest.width / 2 - bigLogo / 2,
                            biggest.height - bigLogo, bigLogo, bigLogo),
                        biggest),
                  ).animate(CurvedAnimation(
                    parent: _controller!,
                    curve: Curves.slowMiddle,
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.orangeAccent, shape: BoxShape.circle),
                    ),
                  ))
            ],
          );
        },
      ),
    );
  }
}
