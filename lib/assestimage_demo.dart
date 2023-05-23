import 'package:flutter/material.dart';

class AssestImageUi extends StatelessWidget {
  const AssestImageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 500,
          decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/images/3.jpeg'))),
        ),
      ),
    );
  }
}
