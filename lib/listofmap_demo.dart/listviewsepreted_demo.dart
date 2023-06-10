import 'package:flutter/material.dart';

class ListViewSepretedDemo extends StatelessWidget {
  ListViewSepretedDemo({super.key});
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
              child: ListView.separated(
                  //scrollDirection: Axis.horizontal,
                  //clipBehavior: Clip.hardEdge,

                  //primary: true,
                  padding: const EdgeInsets.all(10),
                  //physics: const NeverScrollableScrollPhysics(),
                  //physics: const BouncingScrollPhysics(),
                  //keyboardDismissBehavior:
                  //  ScrollViewKeyboardDismissBehavior.manual,
                  reverse: true,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Text(myFriends[index]),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: myFriends.length))
        ],
      ),
    );
  }
}
