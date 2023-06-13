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
          height: 220,
          width: 350,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: IconButton(
                      onPressed: () {
                        Counter1.decrease1();
                        setState(() {});
                      },
                      icon: const Icon(Icons.minimize),
                      iconSize: 50,
                      padding: const EdgeInsets.only(bottom: 25),
                    ),
                  ),
                  Text(
                    Counter1.add.toString(),
                    style: const TextStyle(fontSize: 50),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 80,
                    width: 80,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: IconButton(
                        onPressed: () {
                          Counter1.increment1();
                          setState(() {});
                        },
                        icon: const Icon(Icons.add),
                        iconSize: 50),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 80,
                    width: 80,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: IconButton(
                      onPressed: () {
                        Counter1.decrease2();
                        setState(() {});
                      },
                      icon: const Icon(Icons.minimize),
                      iconSize: 50,
                      padding: const EdgeInsets.only(bottom: 25),
                      splashColor: Colors.amber,
                    ),
                  ),
                  Text(
                    Counter1.sub.toString(),
                    style: const TextStyle(fontSize: 50),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: IconButton(
                      onPressed: () {
                        Counter1.increment2();
                        setState(() {});
                      },
                      icon: const Icon(Icons.add),
                      iconSize: 50,
                    ),
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
