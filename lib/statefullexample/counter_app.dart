import 'package:first_application/statefullexample/counter.controller.dart';
import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(Counter.count.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Counter.increment();
          setState(() {});
        },
        elevation: 15,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
