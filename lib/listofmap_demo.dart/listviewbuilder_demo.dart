import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  ListViewDemo({super.key});
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
              child: ListView.builder(
            itemBuilder: (context, index) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(myFriends[index]),
                const Divider(),
              ],
            ),
            itemCount: myFriends.length,
            //scrollDirection: Axis.horizontal,
            //clipBehavior: Clip.hardEdge,
            //primary: true,
            padding: const EdgeInsets.all(10),
            //physics: const NeverScrollableScrollPhysics(),
            //physics: const BouncingScrollPhysics(),
            //keyboardDismissBehavior:
            //  ScrollViewKeyboardDismissBehavior.manual,
            reverse: true,
            //shrinkWrap: true,
          )),
        ],
      ),
    );
  }
}
