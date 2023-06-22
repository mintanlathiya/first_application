import 'package:flutter/material.dart';

class DropDownButtonDemo extends StatefulWidget {
  const DropDownButtonDemo({super.key});

  @override
  State<DropDownButtonDemo> createState() => _DropDownButtonDemoState();
}

class _DropDownButtonDemoState extends State<DropDownButtonDemo> {
  List<String> myFriend = [
    'mintan',
    'raj',
    'kappu',
    'vishal',
    'hardik',
  ];
  List<String> stream = ['science', 'commerce', 'arts'];
  String? selectedValue = 'mintan';
  String? selectedStrem = 'arts';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DropdownButton(
            value: selectedValue,
            items: myFriend
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList(),
            onChanged: (value) {
              selectedValue = value;
              print(value);
              setState(() {});
            },
          ),
          DropdownButton(
            items: List.generate(
                stream.length,
                (index) => DropdownMenuItem(
                      value: index,
                      child: Text(stream[index]),
                    )),
            onChanged: (value) {
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
