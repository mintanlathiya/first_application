import 'package:flutter/material.dart';

class ShowTimePickerDemo extends StatefulWidget {
  const ShowTimePickerDemo({super.key});

  @override
  State<ShowTimePickerDemo> createState() => _ShowTimePickerDemoState();
}

class _ShowTimePickerDemoState extends State<ShowTimePickerDemo> {
  TimeOfDay? selecetedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () async {
                selecetedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  cancelText: 'cancle',
                  confirmText: 'confirm',
                  anchorPoint: const Offset(0, 1.5),
                  helpText: 'provide time',
                  hourLabelText: '60 min',
                  minuteLabelText: '60 sec',
                  orientation: Orientation.landscape,
                  
                );
                setState(() {});
              },
              child: const Text('show time picker'),
            ),
            if (selecetedTime != null) Text(selecetedTime.toString()),
          ],
        ),
      ),
    );
  }
}
