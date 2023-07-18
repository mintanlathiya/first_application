import 'package:flutter/material.dart';

class DateTimeExDemo extends StatefulWidget {
  const DateTimeExDemo({super.key});

  @override
  State<DateTimeExDemo> createState() => _DateTimeExDemoState();
}

class _DateTimeExDemoState extends State<DateTimeExDemo> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              onPressed: () async {
                final DateTime? select = await showDatePicker(
                  context: context,
                  initialDate: selectedDate,
                  firstDate: DateTime(2023),
                  lastDate: DateTime(2050),
                );
                selectedDate = select!;
                setState(() {});
              },
              child: const Text('date show'),
            ),
            Text(
                '${selectedDate.day}- ${selectedDate.month}-${selectedDate.year}'),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () async {
                TimeOfDay? selected = await showTimePicker(
                  context: context,
                  initialTime: selectedTime,
                );
                setState(() {});
                selectedTime = selected!;
              },
              child: const Text('time show'),
            ),
            Text('  ${selectedTime.format(context)}'),
          ],
        ),
      ),
    );
  }
}
