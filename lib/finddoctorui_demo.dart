import 'package:flutter/material.dart';

class FindDoctorUiDemo extends StatelessWidget {
  const FindDoctorUiDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  width: 620,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/30.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Icon(Icons.arrow_back_ios),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 350,
                  ),
                  height: 480,
                  width: 620,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 200, 190, 190),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(50))),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Schedule',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                            fontSize: 30,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(15),
                                    height: 100,
                                    width: 65,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Mo'),
                                        Padding(
                                          padding: EdgeInsets.only(top: 7),
                                          child: Text(
                                            '12',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.purple,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(15),
                                    height: 100,
                                    width: 65,
                                    decoration: const BoxDecoration(
                                        color: Colors.purple,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'Tu',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 7),
                                          child: Text(
                                            '13°',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(15),
                                    height: 100,
                                    width: 65,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('We'),
                                        Padding(
                                          padding: EdgeInsets.only(top: 7),
                                          child: Text(
                                            '14',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.purple,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(15),
                                    height: 100,
                                    width: 65,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Th'),
                                        Padding(
                                          padding: EdgeInsets.only(top: 7),
                                          child: Text(
                                            '15',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.purple,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(15),
                                    height: 100,
                                    width: 65,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Fr'),
                                        Padding(
                                          padding: EdgeInsets.only(top: 7),
                                          child: Text(
                                            '16°',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.purple,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(15),
                                    height: 100,
                                    width: 65,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Sa'),
                                        Padding(
                                          padding: EdgeInsets.only(top: 7),
                                          child: Text(
                                            '17',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.purple,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(15),
                                    height: 100,
                                    width: 65,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Su'),
                                        Padding(
                                          padding: EdgeInsets.only(top: 7),
                                          child: Text(
                                            '18',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.purple,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            const Text('20 Doctors Available'),
                            Stack(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 20),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/3.jpeg'),
                                          fit: BoxFit.fill),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(30))),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 40),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/3.jpeg'),
                                          fit: BoxFit.fill),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(30))),
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  margin: const EdgeInsets.only(left: 60),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/3.jpeg'),
                                          fit: BoxFit.fill),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(30))),
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  margin: const EdgeInsets.only(left: 80),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/3.jpeg'),
                                          fit: BoxFit.fill),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(30))),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(Icons.more_vert),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              padding: const EdgeInsets.all(10),
                              alignment: Alignment.centerLeft,
                              height: 110,
                              width: 400,
                              decoration: const BoxDecoration(
                                color: Colors.purple,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              child: const Icon(
                                Icons.wifi_calling_3_outlined,
                                size: 40,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 90, top: 5, right: 20),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              height: 110,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 243, 232, 232),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: const Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/3.jpeg'),
                                    radius: 30,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Dr. Luna',
                                          style: TextStyle(
                                            color: Colors.purple,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text('0.3 km away,prime Medical'),
                                        Text('MBBS(FPCS)'),
                                        Text('⭐⭐⭐⭐⭐,')
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(Icons.favorite_border)
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 7),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          height: 110,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 243, 232, 232),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: const Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/3.jpeg'),
                                radius: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.all(12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dr. David',
                                      style: TextStyle(
                                        color: Colors.purple,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text('1 km away,Aster Pharmacy'),
                                    Text('MBBS(FPCS)'),
                                    Text('⭐⭐⭐⭐⭐,')
                                  ],
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.favorite_border)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.home,
            size: 40,
          ),
          Icon(
            Icons.heart_broken,
            size: 40,
          ),
          Icon(
            Icons.add,
            size: 40,
          ),
          Icon(
            Icons.favorite_border,
            size: 40,
          ),
          Icon(
            Icons.person,
            size: 40,
          ),
        ],
      ),
    );
  }
}
