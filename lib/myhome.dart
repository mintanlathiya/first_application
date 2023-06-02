import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: EdgeInsets.only(left: 20, top: 100),
            child: Text(
              'Your Groups',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            height: 80,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 232, 224, 224),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 30,
                  child: Icon(Icons.enhance_photo_translate_rounded),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Entryway',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('1 light on'),
                  ],
                ),
                const Spacer(),
                Stack(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(left: 8),
                        height: 35,
                        width: 70,
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Text(
                          'On',
                          style: TextStyle(color: Colors.white),
                        )),
                    Container(
                      margin: const EdgeInsets.only(left: 35, top: 2),
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ],
                ),
                const Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            height: 80,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 232, 224, 224),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.black38,
                  radius: 30,
                  child: Icon(Icons.living_outlined),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Living room',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('All light off'),
                  ],
                ),
                const Spacer(),
                Stack(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(right: 8),
                        height: 35,
                        width: 70,
                        alignment: Alignment.centerRight,
                        decoration: const BoxDecoration(
                            color: Colors.black38,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Text(
                          'Off',
                          style: TextStyle(color: Colors.white),
                        )),
                    Container(
                      margin: const EdgeInsets.only(left: 3, top: 2),
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ],
                ),
                const Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            height: 80,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 232, 224, 224),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 134, 168, 227),
                  radius: 30,
                  child: Icon(Icons.kitchen_outlined),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kitchen',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('2 light on'),
                  ],
                ),
                const Spacer(),
                Stack(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(left: 8),
                        height: 35,
                        width: 70,
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Text(
                          'On',
                          style: TextStyle(color: Colors.white),
                        )),
                    Container(
                      margin: const EdgeInsets.only(left: 35, top: 2),
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ],
                ),
                const Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 60),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.brown,
                        ),
                        Text('Home'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.lightbulb_outline),
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
                Divider(
                  thickness: 5,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
