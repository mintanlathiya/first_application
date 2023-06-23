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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
              //alignment: Alignment.center,
              //autofocus: true,
              //borderRadius: const BorderRadius.all(Radius.circular(30)),
              //dropdownColor: Colors.amber,
              //elevation: 1,
              //focusColor: Colors.red,
              //focusNode: FocusNode(),
              //hint: const Text('data'),
              //icon: const Icon(Icons.abc),
              //iconEnabledColor: Colors.blue,
              //iconDisabledColor: Colors.blue,
              //iconSize: 50,
              //isDense: true,
              //isExpanded: true,
              //itemHeight: 100,
              //onTap: () {},
              //padding: const EdgeInsets.all(20),
              //menuMaxHeight: 250,
              // style: const TextStyle(color: Colors.amber),
              // underline: const Text('data'),
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
      ),
    );
  }
}
