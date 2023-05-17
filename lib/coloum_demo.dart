import 'package:flutter/material.dart';

class ColoumDemo extends StatelessWidget {
  const ColoumDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('mintan'),
          Text('kanjibhai'),
          Text('lathiya'),
        ],
      ),
    );
  }
}
