import 'package:flutter/material.dart';

class VerificationUiDemo extends StatelessWidget {
  const VerificationUiDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back),
                Icon(Icons.settings),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                padding: const EdgeInsets.only(right: 80),
                alignment: Alignment.centerRight,
                height: 60,
                width: 500,
                decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: const Text(
                  'Outcome',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 25, top: 20),
                alignment: Alignment.center,
                height: 50,
                width: 255,
                decoration: const BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: const Text(
                  'Income',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          const Text('Saved This Month'),
          const SizedBox(
            height: 18,
          ),
          const Text(
            '\$25,999.00',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Day'),
              Text('Week'),
              Text(
                'Month',
                style: TextStyle(
                  color: Colors.deepPurple,
                ),
              ),
              Text('Year'),
            ],
          ),
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    height: 260,
                    width: 610,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/8.jpeg'),
                      fit: BoxFit.cover,
                    )),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('jan'),
              const Text('Feb'),
              const Text('Mar'),
              const Text('Apr'),
              const Text('May'),
              Container(
                height: 40,
                width: 60,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: const Text(
                  'Jun',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const Text('jul'),
            ],
          ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 25, left: 105),
                height: 150,
                width: 380,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 224, 217, 236),
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40, left: 90),
                height: 150,
                width: 420,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 185, 171, 209),
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 55, left: 75),
                height: 150,
                width: 460,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 144, 116, 192),
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 70, left: 50),
                height: 150,
                width: 500,
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Plan for 2020',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Completed',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Colors.amber,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.purple,
                                    Colors.yellow,
                                    Colors.pink,
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                ),
                              ),
                              child: Container(
                                height: 80,
                                width: 80,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                ),
                                child: const Text(
                                  '75%',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
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
