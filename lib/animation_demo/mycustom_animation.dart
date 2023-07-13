import 'package:flutter/material.dart';

class ClockWiseRotation extends AnimatedWidget {
  const ClockWiseRotation({super.key, required super.listenable});

  Animation<double> get controller => super.listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: controller.value * 20,
      child: Container(
        height: 100,
        width: 100,
        color: Colors.red,
      ),
    );
  }
}

class AntiClockWiseRotation extends AnimatedWidget {
  const AntiClockWiseRotation({super.key, required super.listenable});

  Animation<double> get controller => super.listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -controller.value * 20,
      child: Container(
        height: 100,
        width: 100,
        color: Colors.red,
      ),
    );
  }
}
