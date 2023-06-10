import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        //scrollDirection: Axis.horizontal,
        // physics: const ClampingScrollPhysics(),
        //physics: const NeverScrollableScrollPhysics(),
        // physics: const BouncingScrollPhysics(),
        // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        // dragStartBehavior: DragStartBehavior.start,
        // itemExtent: 50,
        // padding: const EdgeInsets.all(20),
        // primary: true,
        // reverse: true,
        //shrinkWrap: true,
        //clipBehavior: Clip.hardEdge,
        children: List.generate(30, (index) => Text(index.toString())),
      ),
    );
  }
}
