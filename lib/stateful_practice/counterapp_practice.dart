import 'package:first_application/statefullexample/counter.controller.dart';
import 'package:flutter/material.dart';

class CounterAppDemo extends StatefulWidget {
  const CounterAppDemo({super.key});

  @override
  State<CounterAppDemo> createState() => _CounterAppDemoState();
}

class _CounterAppDemoState extends State<CounterAppDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 150,
          width: 250,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: IconButton(
                        onPressed: () {
                          Counter1.decrease1();
                          setState(() {});
                        },
                        icon: const Icon(Icons.minimize)),
                  ),
                  Text(Counter1.add.toString()),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 60,
                    width: 60,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: IconButton(
                        onPressed: () {
                          Counter1.increment1();
                          setState(() {});
                        },
                        icon: const Icon(Icons.add)),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 60,
                    width: 60,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: IconButton(
                        onPressed: () {
                          Counter1.decrease2();
                          setState(() {});
                        },
                        icon: const Icon(Icons.minimize)),
                  ),
                  Text(Counter1.sub.toString()),
                  Container(
                    height: 60,
                    width: 60,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: IconButton(
                        onPressed: () {
                          Counter1.increment2();
                          setState(() {});
                        },
                        icon: const Icon(Icons.add)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
