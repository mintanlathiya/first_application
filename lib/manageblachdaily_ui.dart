import 'package:flutter/material.dart';

class ManagedailyBlackTaskUi extends StatelessWidget {
  const ManagedailyBlackTaskUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 60, top: 20, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.drag_indicator,
                  size: 50,
                  color: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 60),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/4.jpeg'),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 60),
            child: Row(
              children: [
                Text(
                  'Hi Ghulam',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 60),
            child: Row(
              children: [
                Text(
                  '6 Tasks are pending',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            height: 150,
            width: 500,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 40, 28, 28),
                    Color.fromARGB(255, 11, 10, 10),
                    Color.fromARGB(255, 23, 19, 19),
                    Color.fromARGB(255, 37, 33, 33),
                    Colors.orange,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
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
                            color: Colors.white, fontWeight: FontWeight.bold),
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
                            color: Colors.white, fontWeight: FontWeight.bold),
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
                            backgroundImage: AssetImage('assets/images/3.jpeg'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/4.jpeg'),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Text(
                        'Now',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    'Monthly Review',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 60, top: 20),
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: const Icon(
                    Icons.calendar_month,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(20),
                        height: 150,
                        width: 200,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 11, 10, 10),
                                Color.fromARGB(255, 23, 19, 19),
                                Color.fromARGB(255, 37, 33, 33),
                                Color.fromARGB(116, 223, 143, 23),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 28),
                              child: Text(
                                '22',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Done',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    height: 110,
                    width: 200,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 11, 10, 10),
                            Color.fromARGB(255, 23, 19, 19),
                            Color.fromARGB(255, 37, 33, 33),
                            Color.fromARGB(116, 223, 143, 23),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            '10',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Text(
                            'Ongoing',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(20),
                        height: 110,
                        width: 200,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 11, 10, 10),
                                Color.fromARGB(255, 23, 19, 19),
                                Color.fromARGB(255, 37, 33, 33),
                                Color.fromARGB(116, 223, 143, 23),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Text(
                                '7',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(4),
                              child: Text(
                                'In Progress',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    height: 150,
                    width: 200,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 11, 10, 10),
                            Color.fromARGB(255, 23, 19, 19),
                            Color.fromARGB(255, 37, 33, 33),
                            Color.fromARGB(116, 223, 143, 23),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 28),
                          child: Text(
                            '12',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Waiting for Review',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.home,
            color: Colors.white,
            size: 40,
          ),
          Icon(
            Icons.file_copy,
            color: Colors.orange,
            size: 40,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
            size: 40,
          ),
          Icon(
            Icons.notifications_outlined,
            color: Colors.white,
            size: 40,
          ),
        ],
      ),
    );
  }
}
