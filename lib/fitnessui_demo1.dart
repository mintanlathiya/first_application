import 'package:flutter/material.dart';

class FitnessDemo extends StatelessWidget {
  const FitnessDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 207, 207),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Icon(
                    Icons.dataset_outlined,
                    size: 30,
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/3.jpeg',
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'My Activities',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(5),
              height: 60,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      size: 30,
                    ),
                  ),
                  Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 10),
                  height: 50,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: const Text(
                    'Daily',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: const Text('Weekly'),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 10),
                  height: 50,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: const Text('Monthly'),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 10),
                  height: 50,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: const Text('Yearly'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      height: 220,
                      width: 180,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Steps',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.purple,
                                  child: Icon(Icons.snowshoeing_rounded),
                                )
                              ],
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 130,
                                width: 130,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.purple,
                                        Colors.pink,
                                      ],
                                      begin: Alignment.centerRight,
                                      end: Alignment.bottomLeft,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(70))),
                              ),
                              Positioned(
                                top: 9,
                                left: 10,
                                child: Container(
                                  height: 110,
                                  width: 110,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(70))),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '2285',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Steps',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 180,
                      width: 180,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Heart',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.purple,
                                    child: Icon(Icons.favorite_border),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 160,
                              color: Colors.transparent,
                              child: const Row(
                                children: [
                                  VerticalDivider(
                                    color: Colors.purple,
                                    thickness: 5,
                                    indent: 25,
                                    endIndent: 25,
                                  ),
                                  VerticalDivider(
                                    color: Colors.pink,
                                    thickness: 5,
                                    indent: 15,
                                    endIndent: 15,
                                  ),
                                  VerticalDivider(
                                    color: Color.fromARGB(255, 198, 185, 200),
                                    thickness: 5,
                                  ),
                                  VerticalDivider(
                                    color: Colors.purple,
                                    thickness: 5,
                                    indent: 25,
                                    endIndent: 25,
                                  ),
                                  VerticalDivider(
                                    color: Colors.pink,
                                    thickness: 5,
                                    indent: 15,
                                    endIndent: 15,
                                  ),
                                  VerticalDivider(
                                    color: Color.fromARGB(255, 198, 185, 200),
                                    thickness: 5,
                                  ),
                                  VerticalDivider(
                                    color: Colors.purple,
                                    thickness: 5,
                                    indent: 15,
                                    endIndent: 15,
                                  ),
                                  VerticalDivider(
                                    color: Colors.pink,
                                    thickness: 5,
                                    indent: 25,
                                    endIndent: 25,
                                  ),
                                  VerticalDivider(
                                    color: Color.fromARGB(255, 198, 185, 200),
                                    thickness: 5,
                                  ),
                                  VerticalDivider(
                                    color: Colors.purple,
                                    thickness: 5,
                                    indent: 25,
                                    endIndent: 25,
                                  ),
                                ],
                              ),
                            ),
                            const Text('110 bmp')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 180,
                      width: 180,
                      margin: const EdgeInsets.only(top: 20),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 136, 26, 155),
                              Color.fromARGB(255, 159, 50, 179),
                              Colors.pink,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: const Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Heart',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(Icons.favorite_border),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15, top: 20),
                              child: Text(
                                '8:00',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                'Hours',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      height: 220,
                      width: 180,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Calories',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.purple,
                                  child: Icon(Icons.play_circle_outline),
                                )
                              ],
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 130,
                                width: 130,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.purple,
                                        Colors.pink,
                                      ],
                                      begin: Alignment.centerRight,
                                      end: Alignment.bottomLeft,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(70))),
                              ),
                              Positioned(
                                top: 9,
                                left: 10,
                                child: Container(
                                  height: 110,
                                  width: 110,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(70))),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '357',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'kcal',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(10),
              height: 60,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: const Row(
                children: [
                  Text(
                    'Daily Meals',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.apple,
                    size: 30,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(10),
              height: 60,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: const Row(
                children: [
                  Text(
                    'Other Information',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.info,
                    size: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
