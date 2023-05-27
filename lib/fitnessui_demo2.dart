import 'package:flutter/material.dart';

class FitnessUiDemo extends StatelessWidget {
  const FitnessUiDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios),
                Spacer(),
                Icon(Icons.search),
              ],
            ),
          ),
          const Text(
            'Current Session',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          const Text(
            '40 min',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          const Text(
            'Medium   Intensity',
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              children: [
                Text(
                  'Schedule',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Spacer(),
                Text(
                  'Aug, 2020',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    height: 85,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 193, 134, 154),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('10',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          'S',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    height: 100,
                    width: 60,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple,
                          Color.fromARGB(255, 169, 66, 187),
                          Colors.pink
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '11',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'S',
                        ),
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 85,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 193, 134, 154),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('12',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          'M',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 85,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 193, 134, 154),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('13',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          'T',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 85,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 193, 134, 154),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('14',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          'W',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 85,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 193, 134, 154),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('15',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          'T',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(25),
            height: 130,
            color: Colors.white,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Your Progress',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
                Stack(
                  children: [
                    Divider(
                      thickness: 10,
                    ),
                    Divider(
                      thickness: 10,
                      endIndent: 250,
                      color: Colors.purpleAccent,
                    ),
                    Divider(
                      thickness: 10,
                      endIndent: 360,
                      color: Color.fromARGB(255, 33, 59, 176),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 260),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 33, 40, 144),
                        radius: 10,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 7,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '40 min/',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '150 min',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 360,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/32.jpeg'),
              fit: BoxFit.fill,
            )),
          ),
        ],
      ),
    );
  }
}
