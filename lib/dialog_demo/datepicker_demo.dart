import 'package:flutter/material.dart';

class DatePickerDemo extends StatefulWidget {
  const DatePickerDemo({super.key});

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MaterialButton(
            onPressed: () async {
              selectedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2023),
                lastDate: DateTime(2050),
                anchorPoint: Offset.zero,
                currentDate: DateTime.tryParse(AutofillHints.birthday),
                confirmText: 'confirm',
                fieldHintText: 'field hint',
                fieldLabelText: 'field label',
                helpText: 'help text',
                cancelText: 'cancle',
                keyboardType: const TextInputType.numberWithOptions(),
                initialDatePickerMode: DatePickerMode.year,
                textDirection: TextDirection.ltr,
              ).then((value) {
                setState(() {});
                return value;
              });
              setState(() {});
            },
            child: const Text('show date picker'),
          ),
          if (selectedDate != null) Text(selectedDate.toString()),
        ],
      ),
    );
  }
}
