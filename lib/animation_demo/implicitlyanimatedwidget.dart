import 'package:flutter/material.dart';

class ImplicitlyAnimationWidgetUiDemo extends StatefulWidget {
  const ImplicitlyAnimationWidgetUiDemo({super.key});

  @override
  State<ImplicitlyAnimationWidgetUiDemo> createState() =>
      _ImplicitlyAnimationWidgetUiDemoState();
}

class _ImplicitlyAnimationWidgetUiDemoState
    extends State<ImplicitlyAnimationWidgetUiDemo> {
  @override
  Widget build(BuildContext context) {
    double width = 150;
    double height = 100;
    Color color = Colors.blueAccent;
    double opacity = 0.2;
    CrossFadeState state = CrossFadeState.showFirst;
    double value = 150;
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      width = width == 150 ? 100 : 150;
                      height = height == 150 ? 100 : 150;
                      color = color == Colors.blueAccent
                          ? Colors.deepPurple
                          : Colors.blueAccent;
                      setState(() {});
                    },
                    child: const Text('container Animated')),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      state = state == CrossFadeState.showFirst
                          ? CrossFadeState.showSecond
                          : CrossFadeState.showFirst;
                      setState(() {});
                    },
                    child: const Text('opacity Animated')),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      opacity = opacity == 0.2 ? 1 : 0.2;
                      setState(() {});
                    },
                    child: const Text('Crossfade Animated')),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      value = value == 150 ? 250 : 150;
                      setState(() {});
                    },
                    child: const Text('Tween Animated')),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            height: height,
            width: width,
            curve: Curves.easeInBack,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(8)),
          ),
          const SizedBox(
            height: 20,
          ),
          AnimatedOpacity(
            opacity: opacity,
            duration: const Duration(seconds: 1),
            curve: Curves.easeIn,
            child: Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.orange, borderRadius: BorderRadius.circular(8)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          AnimatedCrossFade(
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
          const SizedBox(
            height: 20,
          ),
          TweenAnimationBuilder(
            tween: Tween<double>(begin: 100, end: value),
            curve: Curves.ease,
            duration: const Duration(seconds: 1),
            builder: (context, value, child) => Container(
              height: 100,
              width: value,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(8)),
            ),
          ),
        ],
      ),
    );
  }
}
