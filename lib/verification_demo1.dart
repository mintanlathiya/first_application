import 'package:flutter/material.dart';

class Verificationdemo extends StatelessWidget {
  const Verificationdemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.sort),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/3.jpeg'),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ghulam',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Welcome Back!',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  child: Icon(Icons.add),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    RotatedBox(
                      quarterTurns: 1,
                      child: Transform.rotate(
                        angle: 0.25,
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 220,
                          width: 340,
                          margin: const EdgeInsets.only(left: 50, top: 7),
                          decoration: const BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 20, bottom: 30),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      height: 40,
                                      width: 55,
                                      decoration: const BoxDecoration(
                                        color: Color.fromARGB(255, 233, 210, 6),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                      ),
                                    ),
                                    Transform.rotate(
                                      angle: 1.5,
                                      child: const Icon(
                                        Icons.wifi,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20, bottom: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      '4560 1122 4595 7852',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'CARD HOLDER',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Stack(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 125),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.red,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 160),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.orange,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                  top: 5,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Ghulam Rasool',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      ' Mastercard',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child: Transform.rotate(
                        alignment: Alignment.bottomRight,
                        angle: -0.25,
                        child: Container(
                          margin: const EdgeInsets.only(left: 50, bottom: 7),
                          height: 220,
                          width: 340,
                          decoration: const BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 20, bottom: 30),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      height: 40,
                                      width: 55,
                                      decoration: const BoxDecoration(
                                        color: Color.fromARGB(255, 233, 210, 6),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50)),
                                      ),
                                    ),
                                    Transform.rotate(
                                      angle: 1.5,
                                      child: const Icon(
                                        Icons.wifi,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20, bottom: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      '4560 1122 4595 7852',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'CARD HOLDER',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Stack(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 125),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.red,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 160),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.orange,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                  top: 5,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Ghulam Rasool',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      ' Mastercard',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child: Container(
                        height: 230,
                        width: 385,
                        decoration: const BoxDecoration(
                            color: Colors.purple,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 20, bottom: 30),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    height: 40,
                                    width: 55,
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 233, 210, 6),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(50)),
                                    ),
                                  ),
                                  Transform.rotate(
                                    angle: 1.5,
                                    child: const Icon(
                                      Icons.wifi,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20, bottom: 20),
                              child: Row(
                                children: [
                                  Text(
                                    '4560 1122 4595 7852',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'CARD HOLDER',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 125),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.red,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 160),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.orange,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 5,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Ghulam Rasool',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    ' Mastercard',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            color: const Color.fromARGB(190, 255, 255, 255),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('Total Spent'),
                            Text(
                              '\$1,520.00',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.more_horiz)
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(20),
                          height: 90,
                          width: 250,
                          decoration: const BoxDecoration(
                              color: Colors.purpleAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.card_giftcard,
                                color: Color.fromARGB(255, 56, 17, 63),
                                size: 50,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Shopping'),
                                  Text(
                                    '\$300.00',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(20),
                          height: 90,
                          width: 250,
                          decoration: const BoxDecoration(
                              color: Colors.yellowAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.car_crash_sharp,
                                color: Color.fromARGB(255, 56, 17, 63),
                                size: 50,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('driving'),
                                  Text(
                                    '\$200.00',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(20),
                          height: 90,
                          width: 250,
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.airplane_ticket,
                                color: Color.fromARGB(255, 56, 17, 63),
                                size: 50,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Moving'),
                                  Text(
                                    '\$400.00',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Icon(Icons.local_grocery_store)),
                    title: const Text(
                      'Grocery',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('Just Now'),
                    trailing: const Text(
                      '\$45',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Icon(Icons.sports_gymnastics)),
                    title: const Text(
                      'Gym',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('23,Jun,2020 10:00'),
                    trailing: const Text(
                      '\$125',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Icon(Icons.local_grocery_store)),
                    title: const Text(
                      'Grocery',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('Just Now'),
                    trailing: const Text(
                      '\$45',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
