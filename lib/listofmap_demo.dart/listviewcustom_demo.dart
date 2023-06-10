import 'package:flutter/material.dart';

class ListViewCustom extends StatelessWidget {
  ListViewCustom({super.key});
  final List<String> myFriends = [
    'ansh',
    'mintan',
    'hardik',
    'vishal',
    'kappu',
    'viraj',
    'hardika',
    'vishali',
    'kappu',
    'raj',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.custom(
                childrenDelegate: SliverChildBuilderDelegate(
              (context, index) => Text(myFriends[index]),
              childCount: myFriends.length,
            )),
          ),
        ],
      ),
    );
  }
}
