import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  const SliderDemo({super.key});

  @override
  State<SliderDemo> createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double selectPrice = 0;
  double selectEndPrice = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Slider(
                min: 0,
                max: 1,
                //activeColor: Colors.green,
                //autofocus: true,
                //divisions: 10,
                //focusNode: FocusNode(),
                // label: 'mintan',
                //mouseCursor: MouseCursor.defer,
                //overlayColor: const MaterialStatePropertyAll(Colors.pinkAccent),
                //secondaryActiveColor: Colors.red,
                //secondaryTrackValue: 0.5,
                //thumbColor: Colors.amber,
                // onChangeEnd: (value) {
                //   selectEndPrice = value;
                //   print(selectEndPrice);
                // },
                value: selectPrice,
                onChanged: (value) {
                  selectPrice = value;
                  print(selectPrice);
                  setState(() {});
                },
              ),
              CupertinoSlider(
                value: selectPrice,
                onChanged: (value) {
                  selectPrice = value;
                  setState(() {});
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
