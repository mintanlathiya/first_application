import 'package:flutter/material.dart';

class DreamHouse extends StatelessWidget {
  const DreamHouse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            width: 500,
            decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/images/12.jpeg')),
            ),
          ),
        ],
      ),
    );
  }
}
