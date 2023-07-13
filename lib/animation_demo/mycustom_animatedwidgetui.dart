import 'package:first_application/animation_demo/mycustom_animation.dart';
import 'package:flutter/material.dart';

class MyCustomAnimatedWidgetUi extends StatefulWidget {
  const MyCustomAnimatedWidgetUi({super.key});

  @override
  State<MyCustomAnimatedWidgetUi> createState() =>
      _MyCustomAnimatedWidgetUiState();
}

class _MyCustomAnimatedWidgetUiState extends State<MyCustomAnimatedWidgetUi>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 50))
          ..repeat();
    super.initState();
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClockWiseRotation(listenable: animationController!),
            const SizedBox(
              height: 50,
            ),
            AntiClockWiseRotation(listenable: animationController!),
          ],
        ),
      ),
    );
  }
}
