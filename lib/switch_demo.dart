import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  const SwitchDemo({super.key});

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('isActive'),
              Switch(
                value: isActive,
                onChanged: (value) {
                  isActive = value;
                  setState(() {});
                },

                //activeThumbImage: const AssetImage('assets/images/3.jpeg'),
                //inactiveThumbColor: Colors.black12.withOpacity(0.1),
                //inactiveThumbImage: const AssetImage('assets/images/21.jpeg'),
                //trackColor:
                //   MaterialStatePropertyAll(Colors.pink.withOpacity(0.2)),
                //thumbColor: const MaterialStatePropertyAll(Colors.pink),
                //inactiveTrackColor: Colors.pinkAccent.withOpacity(0.2),

                //thumbIcon: const MaterialStatePropertyAll(Icon(Icons.add)),
                //trackOutlineColor: const MaterialStatePropertyAll(Colors.pink),
                //activeColor: Colors.amber,
                //autofocus: true,
                //focusColor: Colors.red,
                //hoverColor: Colors.green,
                //overlayColor: const MaterialStatePropertyAll(Colors.brown),
                //mouseCursor: MouseCursor.defer,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('curputino'),
              CupertinoSwitch(
                value: isActive,
                onChanged: (value) {
                  isActive = value;
                  setState(() {});
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
