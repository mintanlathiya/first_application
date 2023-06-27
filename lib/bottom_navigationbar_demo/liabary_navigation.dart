import 'package:flutter/material.dart';

class LiabaryDemo extends StatefulWidget {
  const LiabaryDemo({super.key});

  @override
  State<LiabaryDemo> createState() => _LiabaryDemoState();
}

class _LiabaryDemoState extends State<LiabaryDemo> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('library contain here'),
    );
  }
}
