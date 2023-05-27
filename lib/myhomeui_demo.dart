import 'package:flutter/material.dart';

class MyHomeUiDemo extends StatelessWidget {
  const MyHomeUiDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                const Icon(
                  Icons.arrow_back,
                  color: Colors.brown,
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
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Living Room ',
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
                      Icons.lightbulb_circle_outlined,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Add Scene')
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
                      Icons.lightbulb_outlined,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Add Smart Bulg')
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
                      Icons.insert_drive_file_outlined,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Manage')
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Icon(Icons.light_mode_sharp),
                Container(
                  margin: const EdgeInsets.all(8),
                  height: 20,
                  width: 500,
                  color: Colors.transparent,
                  child: const Stack(
                    children: [
                      Divider(
                        thickness: 3,
                        color: Colors.black12,
                      ),
                      Divider(
                        thickness: 3,
                        color: Colors.yellowAccent,
                        endIndent: 250,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 240),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 240, 226, 226),
                          radius: 20,
                          child: CircleAvatar(
                            backgroundColor: Colors.yellowAccent,
                            radius: 4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.light_mode_outlined),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lights',
                  style: TextStyle(color: Colors.purple),
                ),
                Text('Scenes'),
                Text('Color'),
                Text('Temp'),
              ],
            ),
          ),
          const Stack(
            children: [
              Divider(
                thickness: 3,
                color: Color.fromARGB(255, 249, 243, 243),
              ),
              Divider(
                thickness: 5,
                color: Colors.brown,
                endIndent: 500,
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            height: 140,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 232, 224, 224),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 231, 231, 188),
                      radius: 30,
                      child: Icon(
                        Icons.lightbulb_outline,
                        color: Color.fromARGB(255, 132, 122, 38),
                        size: 35,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'Dining table',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const Icon(Icons.light_mode_sharp),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10),
                        height: 20,
                        width: 450,
                        color: Colors.transparent,
                        child: const Stack(
                          children: [
                            Divider(
                              thickness: 3,
                              color: Colors.black12,
                            ),
                            Divider(
                              thickness: 3,
                              color: Colors.yellowAccent,
                              endIndent: 200,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 240),
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 205, 174, 174),
                                radius: 20,
                                child: CircleAvatar(
                                  backgroundColor: Colors.yellowAccent,
                                  radius: 4,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.light_mode_outlined),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: const EdgeInsets.all(10),
            height: 140,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 232, 224, 224),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 150, 175, 218),
                      radius: 30,
                      child: Icon(
                        Icons.lightbulb_outline,
                        color: Colors.blue,
                        size: 35,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'Sofa light',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const Icon(Icons.light_mode_sharp),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10),
                        height: 20,
                        width: 450,
                        color: Colors.transparent,
                        child: const Stack(
                          children: [
                            Divider(
                              thickness: 3,
                              color: Colors.black12,
                            ),
                            Divider(
                              thickness: 3,
                              color: Colors.yellowAccent,
                              endIndent: 200,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 240),
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 205, 174, 174),
                                radius: 20,
                                child: CircleAvatar(
                                  backgroundColor: Colors.yellowAccent,
                                  radius: 4,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.light_mode_outlined),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: const EdgeInsets.all(10),
            height: 140,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 232, 224, 224),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.black26,
                      radius: 30,
                      child: Icon(
                        Icons.lightbulb_outline,
                        color: Colors.black54,
                        size: 35,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'Lamp',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const Icon(Icons.light_mode_sharp),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10),
                        height: 20,
                        width: 450,
                        color: Colors.transparent,
                        child: const Stack(
                          children: [
                            Divider(
                              thickness: 3,
                              color: Colors.black12,
                            ),
                            Divider(
                              thickness: 3,
                              color: Colors.black45,
                              endIndent: 200,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 240),
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 205, 174, 174),
                                radius: 20,
                                child: CircleAvatar(
                                  backgroundColor: Colors.yellowAccent,
                                  radius: 4,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.light_mode_outlined),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
