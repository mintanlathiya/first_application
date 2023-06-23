import 'package:flutter/material.dart';

class PopUpMenuDemoButton extends StatefulWidget {
  const PopUpMenuDemoButton({super.key});

  @override
  State<PopUpMenuDemoButton> createState() => _PopUpMenuDemoButtonState();
}

class _PopUpMenuDemoButtonState extends State<PopUpMenuDemoButton> {
  List<String> myFriend = [
    'mintan',
    'raj',
    'kappu',
    'vishal',
    'hardik',
  ];
  String selectedValue = 'raj';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PopupMenuButton(
            //clipBehavior: Clip.antiAlias,
            initialValue: selectedValue,
            onCanceled: () {
              selectedValue = 'raj';
              setState(() {});
            },
            onOpened: () {
              selectedValue = 'mintan';
              setState(() {});
            },
            onSelected: (value) {
              selectedValue = 'hardik';
              setState(() {});
            },
            //position: PopupMenuPosition.under,
            tooltip: 'mini',
            itemBuilder: (context) => myFriend
                .map((e) => PopupMenuItem(value: e, child: Text(e)))
                .toList(),
            child: const Icon(Icons.add)),
      ),
    );
  }
}
