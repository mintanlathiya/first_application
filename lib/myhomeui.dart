import 'package:flutter/material.dart';

class MyHomeDemo extends StatelessWidget {
  const MyHomeDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(31, 244, 233, 233),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 80, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'My Home ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.keyboard_arrow_down_outlined),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 232, 224, 224),
                    radius: 40,
                    child: Icon(
                      Icons.lightbulb_outlined,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Add Smart Bulb')
                ],
              ),
              SizedBox(
                width: 25,
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 232, 224, 224),
                    radius: 40,
                    child: Icon(
                      Icons.add,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Add')
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 75, bottom: 10),
            child: Text(
              'Your Groups',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 180,
                    width: 180,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 232, 224, 224),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.amber,
                                  ),
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50))),
                              child: const Icon(Icons.wb_sunny_outlined),
                            ),
                            const Icon(Icons.more_horiz),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'EveryDay',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('All groups'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 180,
                    width: 180,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 232, 224, 224),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.amber,
                                  ),
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50))),
                              child: const Icon(Icons.light_outlined),
                            ),
                            const Icon(Icons.more_horiz),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Relax',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('Living Room'),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 180,
                    width: 180,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 232, 224, 224),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.blue,
                                  ),
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50))),
                              child: const Icon(Icons.remove_red_eye_outlined),
                            ),
                            const Icon(Icons.more_horiz),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Focus',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('Master Bedroom '),
                        const Text('Kitchen and 1 more'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 180,
                    width: 180,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 232, 224, 224),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.amber,
                                  ),
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50))),
                              child: const Icon(Icons.light_mode_rounded),
                            ),
                            const Icon(Icons.more_horiz),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'NightLight',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('Master Bedroom and'),
                        const Text('Kid\'s Bedroom '),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.home,
                    ),
                    Text('Home'),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.lightbulb_outline,
                      color: Colors.brown,
                    ),
                    Text('Scenes'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.watch_later_outlined),
                    Text('Schedule'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.insert_drive_file_outlined),
                    Text('Manage'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.person),
                    Text('Me'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
