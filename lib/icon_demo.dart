import 'package:flutter/material.dart';

class IconDemo extends StatelessWidget {
  const IconDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.access_alarm,
          
          color: Colors.blue,
          
          size: 50,
        ),
      ),
    );
  }
}
