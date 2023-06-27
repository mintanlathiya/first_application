import 'package:flutter/material.dart';

class ShortDemo extends StatefulWidget {
  const ShortDemo({super.key});

  @override
  State<ShortDemo> createState() => _ShortDemoState();
}

class _ShortDemoState extends State<ShortDemo> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('shorts contain here'),
    );
  }
}
