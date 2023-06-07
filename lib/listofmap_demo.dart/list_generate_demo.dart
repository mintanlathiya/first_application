import 'package:flutter/material.dart';

class ListGenerateDemo extends StatelessWidget {
  final List<String> myFriends = [
    'ansh',
    'mintan',
    'hardik',
    'vishal',
    'kappu',
    'viraj',
  ];
  ListGenerateDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(
          myFriends.length,
          (index) => Text(myFriends[index]),
        ),
      ),
    );
  }
}
