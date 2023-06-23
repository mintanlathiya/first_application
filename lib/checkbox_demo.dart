import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  const CheckBoxDemo({super.key});

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool isCricket = false, isFootball = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Text('hobby'),
          Checkbox(
            //activeColor: Colors.amber,
            //checkColor: Colors.red,
            //side: const BorderSide(width: 5),
            //fillColor: const MaterialStatePropertyAll(Colors.amber),
            //focusColor: Colors.amber,
            //focusNode: FocusNode(),
            //hoverColor: Colors.red,
            //isError: true,
            // overlayColor: const MaterialStatePropertyAll(Colors.deepPurple),
            // mouseCursor: MouseCursor.defer,
            //splashRadius: 20,
            //tristate: true,
            //autofocus: true,
            //shape: const BeveledRectangleBorder(
            //  borderRadius: BorderRadius.all(Radius.circular(20))),
            // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            // visualDensity: const VisualDensity(horizontal: 4, vertical: 2),

            value: isCricket,
            onChanged: (value) {
              isCricket = value!;
              setState(() {});
            },
          ),
          const Text('cricket'),
          Checkbox(
            value: isFootball,
            onChanged: (value) {
              isFootball = value!;
              setState(() {});
            },
          ),
          const Text('football'),
        ],
      ),
    );
  }
}
