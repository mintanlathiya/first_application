import 'package:flutter/material.dart';

class ImplicitlyAnimationWidgetUiDemo extends StatefulWidget {
  const ImplicitlyAnimationWidgetUiDemo({super.key});

  @override
  State<ImplicitlyAnimationWidgetUiDemo> createState() =>
      _ImplicitlyAnimationWidgetUiDemoState();
}

class _ImplicitlyAnimationWidgetUiDemoState
    extends State<ImplicitlyAnimationWidgetUiDemo> {
  double width = 150;
  double height = 100;
  Color color = Colors.blueAccent;
  double opacity = 0.2;
  CrossFadeState state = CrossFadeState.showFirst;
  double value = 150;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              width = width == 150 ? 100 : 150;
              height = height == 150 ? 100 : 150;
              color = color == Colors.blueAccent
                  ? Colors.deepPurple
                  : Colors.blueAccent;
              setState(() {});
            },
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: height,
              width: width,
              curve: Curves.easeInBack,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(8)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              opacity = opacity == 0.2 ? 1 : 0.2;
              setState(() {});
            },
            child: AnimatedOpacity(
              opacity: opacity,
              duration: const Duration(seconds: 1),
              curve: Curves.easeIn,
              child: Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              state = state == CrossFadeState.showFirst
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst;
              setState(() {});
            },
            child: AnimatedCrossFade(
              firstChild: Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(8)),
              ),
              secondChild: Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(8)),
              ),
              crossFadeState: state,
              firstCurve: Curves.bounceOut,
              secondCurve: Curves.easeIn,
              duration: const Duration(seconds: 1),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              value = value == 150 ? 250 : 150;
              setState(() {});
            },
            child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 100, end: value),
              curve: Curves.ease,
              duration: const Duration(seconds: 1),
              builder: (context, value, child) => Container(
                height: 100,
                width: value,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
