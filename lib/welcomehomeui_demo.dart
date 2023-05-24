import 'package:flutter/material.dart';

class WelComeHome extends StatelessWidget {
  const WelComeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('welcome home'),
                    Text(
                      'Alex Tobey',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    )
                  ],
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      color: Colors.amber,
                      image: DecorationImage(
                          image: AssetImage('assets/images/3.jpeg')),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ],
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 230, 217, 217),
                  child: Icon(
                    Icons.solar_power,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '20.3',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'kwh',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text('Power usage for today'),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    )),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.bathtub,
                        color: Colors.white,
                        size: 50,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Bathroom',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('1 device'),
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 243, 237, 237),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    )),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.living_outlined,
                        color: Colors.orangeAccent,
                        size: 50,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Living room',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('4 device'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 243, 237, 237),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    )),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.kitchen,
                        color: Colors.orangeAccent,
                        size: 50,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Kitchen',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('2 device'),
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 243, 237, 237),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    )),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.dining,
                        color: Colors.orangeAccent,
                        size: 50,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Dining room',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('1 device'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Stack(
            children: [
              Container(
                height: 180,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(20),
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: Colors.amber,
                              image: DecorationImage(
                                  image: AssetImage('assets/images/3.jpeg')),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Worry about Me',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Ellite Goulding,blackbear',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                        Container(
                          margin: const EdgeInsets.all(20),
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: const Icon(
                            Icons.pause_sharp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 120),
                height: 70,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.purple,
                    ),
                    Icon(
                      Icons.group,
                      color: Color.fromARGB(255, 238, 198, 228),
                    ),
                    Icon(
                      Icons.electric_bolt_outlined,
                      color: Color.fromARGB(255, 238, 198, 228),
                    ),
                    Icon(
                      Icons.settings,
                      color: Color.fromARGB(255, 238, 198, 228),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
