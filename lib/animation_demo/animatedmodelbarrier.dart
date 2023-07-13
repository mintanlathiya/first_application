import 'package:flutter/material.dart';

class AnimatedModelBarrierUiDemo extends StatefulWidget {
  const AnimatedModelBarrierUiDemo({super.key});

  @override
  State<AnimatedModelBarrierUiDemo> createState() =>
      _AnimatedModelBarrierUiDemoState();
}

class _AnimatedModelBarrierUiDemoState extends State<AnimatedModelBarrierUiDemo>
    with SingleTickerProviderStateMixin {
  bool _isPressed = false;
  Widget? _animatedModalBarrier;

  AnimationController? _animationController;
  Animation<Color?>? _colorAnimation;

  @override
  void initState() {
    ColorTween colorTween = ColorTween(
        begin: Colors.orangeAccent.withOpacity(0.5),
        end: Colors.blueGrey.withOpacity(0.5));
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _colorAnimation = colorTween.animate(_animationController!);
    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation!,
      dismissible: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                width: 250,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          _isPressed = true;
                          _animationController!.reset();

                          _animationController!.forward();
                          Future.delayed(const Duration(seconds: 3), () {
                            _isPressed = false;

                            setState(() {});
                          });
                          setState(() {});
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orangeAccent),
                        child: const Text('press')),
                    if (_isPressed) _animatedModalBarrier!,
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
