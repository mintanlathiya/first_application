import 'package:flutter/material.dart';

class DreamHouseUi extends StatelessWidget {
  const DreamHouseUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/13.jpeg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_back_ios),
                          Icon(Icons.settings),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Text(
            'Intensity',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 32,
                        left: 180,
                      ),
                      height: 260,
                      width: 260,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 231, 226, 226),
                        borderRadius: BorderRadius.all(Radius.circular(140)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 50,
                        left: 200,
                      ),
                      height: 220,
                      width: 220,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(97, 173, 145, 145),
                        borderRadius: BorderRadius.all(Radius.circular(120)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 83,
                        left: 236,
                      ),
                      padding: const EdgeInsets.all(5),
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(236, 255, 255, 255),
                        border: Border.all(
                          color: const Color.fromARGB(255, 233, 229, 229),
                          width: 10,
                          strokeAlign: 2,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(120)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 125, left: 275),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 126, 166, 199),
                        radius: 8,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 200,
                        left: 145,
                      ),
                      child: Row(
                        children: [
                          Text('16°c'),
                          Padding(
                            padding: EdgeInsets.only(left: 270),
                            child: Text('26°c'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      height: 55,
                      width: 55,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 225, 214, 214),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.light_mode,
                            size: 20,
                          ),
                          Text('Light')
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      height: 55,
                      width: 55,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 225, 214, 214),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.heat_pump,
                            size: 20,
                          ),
                          Text('Heater')
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      height: 55,
                      width: 55,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 225, 214, 214),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.mode_fan_off_outlined,
                            size: 20,
                          ),
                          Text('Fans')
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      height: 55,
                      width: 55,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 225, 214, 214),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.volume_up_outlined,
                            size: 20,
                          ),
                          Text('Sound')
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Schedule',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Container(
                  height: 70,
                  width: 180,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 214, 215, 222),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Power saver',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 50,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 77, 160, 228),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 25, top: 2),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 10,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                padding: const EdgeInsets.all(5),
                height: 70,
                width: 250,
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Text('From'),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('12:00PM'),
                        Text('To'),
                        Text('5:00pm'),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 197, 185, 185),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: const Icon(
                    Icons.home,
                    color: Colors.blue,
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: 82,
                      width: 130,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 50, 131, 198),
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(80))),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 40, top: 10),
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 197, 185, 185),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: const Icon(
                        Icons.add,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 197, 185, 185),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: const Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
