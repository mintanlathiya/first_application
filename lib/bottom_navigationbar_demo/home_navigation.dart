import 'package:flutter/material.dart';

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({super.key});

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
      children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.black26,
          child: const Opacity(
            opacity: 0.3,
            child: Image(
              image: AssetImage('assets/images/24.jpeg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const Text(
          'home cointain here',
          style: TextStyle(color: Colors.white),
        ),
      ],
    ));
  }
}
