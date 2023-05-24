import 'package:flutter/material.dart';

class WelComeHomeUi extends StatelessWidget {
  const WelComeHomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Icon(Icons.arrow_back),
              ),
              Text(
                'Bed Room',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          border: Border.all(
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50),
                          )),
                      child: const Icon(
                        Icons.heat_pump,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'heater',
                      style: TextStyle(color: Colors.orangeAccent),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50),
                          )),
                      child: const Icon(Icons.music_note_sharp),
                    ),
                    const Text('Sound')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50),
                          )),
                      child: const Icon(Icons.mode_fan_off_outlined),
                    ),
                    const Text('fan')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50),
                          )),
                      child: const Icon(Icons.light),
                    ),
                    const Text('Light')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50),
                          )),
                      child: const Icon(Icons.music_note_sharp),
                    ),
                    const Text('Sound')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50),
                          )),
                      child: const Icon(Icons.music_note_sharp),
                    ),
                    const Text('Sound')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50),
                          )),
                      child: const Icon(Icons.mode_fan_off_outlined),
                    ),
                    const Text('fan')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50),
                          )),
                      child: const Icon(Icons.light),
                    ),
                    const Text('Light')
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50),
                          )),
                      child: const Icon(Icons.music_note_sharp),
                    ),
                    const Text('Sound')
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Stack(
            children: [
              Container(
                height: 280,
                width: 280,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 175, 146, 223),
                      blurRadius: 80,
                    ),
                  ],
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(255, 193, 193, 100),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(240)),
                ),
              ),
              Positioned(
                top: 28,
                left: 30,
                child: Container(
                  height: 220,
                  width: 220,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 240, 235, 235),
                    borderRadius: BorderRadius.all(Radius.circular(240)),
                  ),
                  child: const Text(
                    '18.5°C',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Current temperature'),
                    Text(
                      '16°C',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Current humidity'),
                        Text(
                          '60%',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Turn On/Off'),
                        Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              height: 38,
                              width: 90,
                              decoration: const BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 55, top: 8),
                              height: 32,
                              width: 32,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            height: 80,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: const Text(
              'Set tempPerature',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
