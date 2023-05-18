import 'package:flutter/material.dart';

class ManageDailyTaskUi2 extends StatelessWidget {
  const ManageDailyTaskUi2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(255, 167, 192, 235),
            Color.fromARGB(255, 167, 192, 235),
            Color.fromARGB(255, 167, 192, 235),
            Colors.white,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 60,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.blue,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: const Icon(Icons.arrow_back),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/3.jpeg'),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 60,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.arrow_back),
                  Expanded(child: Text('Mar')),
                  Expanded(
                    child: Text(
                      'April',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text('May'),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 110,
                  width: 75,
                  decoration: const BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(100),
                          bottom: Radius.circular(100))),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '12',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'Wed',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 110,
                  width: 75,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(100),
                          bottom: Radius.circular(100))),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '13',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurpleAccent),
                      ),
                      Text(
                        'Thu',
                        style: TextStyle(color: Colors.deepPurpleAccent),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 110,
                  width: 75,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(100),
                          bottom: Radius.circular(100))),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '14',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurpleAccent),
                      ),
                      Text(
                        'Fri',
                        style: TextStyle(color: Colors.deepPurpleAccent),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 110,
                  width: 75,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(100),
                          bottom: Radius.circular(100))),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '15',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurpleAccent),
                      ),
                      Text(
                        'Sat',
                        style: TextStyle(color: Colors.deepPurpleAccent),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                    left: 45,
                  ),
                  child: Text(
                    'Ongoing',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 40, right: 40),
                  height: 450,
                  width: 80,
                  child: const Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('9 AM'),
                          Text('10 AM'),
                          Text('10 AM'),
                          Text('11 AM'),
                          Text('12 AM'),
                          Text('1:00 PM'),
                          Text('12 AM'),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 450,
                  width: 450,
                  margin: const EdgeInsets.all(1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 30,
                          bottom: 12,
                        ),
                        height: 110,
                        width: 360,
                        decoration: const BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  Text(
                                    'Molile  App  Design',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  Text(
                                    'Mike and Anita',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/images/3.jpeg'),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 60),
                                      child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/images/4.jpeg'),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 30),
                                  child: Text(
                                    '9:00AM-10:00AM',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 5,
                        color: Colors.orange,
                        endIndent: 15,
                        indent: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        height: 110,
                        width: 360,
                        decoration: const BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  Text(
                                    'Software  Testing',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  Text(
                                    'Anita and david',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/images/4.jpeg'),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 60),
                                      child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/images/3.jpeg'),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 30),
                                  child: Text(
                                    '10:00AM-11:20AM',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        height: 110,
                        width: 360,
                        decoration: const BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  Text(
                                    'Web  Development',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Row(
                                children: [
                                  Text(
                                    'Mike and Anita',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/images/3.jpeg'),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 60),
                                      child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/images/4.jpeg'),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 30),
                                  child: Text(
                                    '1:00PM-2:00PM',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
