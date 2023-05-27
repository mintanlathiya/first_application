import 'package:flutter/material.dart';

class TravelUiDemo extends StatelessWidget {
  const TravelUiDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Where would',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'you like to travel?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/3.jpeg'),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            padding: const EdgeInsets.all(20),
            height: 60,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 231, 223, 223),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search'),
                Icon(Icons.menu),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 80,
                  margin: const EdgeInsets.only(left: 20, right: 10),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 231, 223, 223),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: const Text('All'),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 219, 80, 55),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: const Text(
                    'Flight',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 231, 223, 223),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: const Text(
                    'Cruise',
                    style: TextStyle(),
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 231, 223, 223),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: const Text(
                    'Train',
                    style: TextStyle(),
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 231, 223, 223),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: const Text(
                    'Hotels',
                    style: TextStyle(),
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 231, 223, 223),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: const Text(
                    'Cruise',
                    style: TextStyle(),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 590,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Container(
                            height: 250,
                            width: 200,
                            margin: const EdgeInsets.only(top: 5),
                            alignment: Alignment.bottomCenter,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/21.jpeg'),
                                  fit: BoxFit.fill,
                                ),
                                color: Color.fromARGB(255, 231, 223, 223),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Paris',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    height: 45,
                                    width: 80,
                                    margin: const EdgeInsets.only(
                                        left: 20, right: 10),
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 231, 223, 223),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: const Text(
                                      '\$120',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            height: 200,
                            width: 200,
                            alignment: Alignment.bottomCenter,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/23.jpeg'),
                                  fit: BoxFit.fill,
                                ),
                                color: Color.fromARGB(255, 231, 223, 223),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Spain',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    height: 45,
                                    width: 80,
                                    margin: const EdgeInsets.only(
                                        left: 20, right: 10),
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 231, 223, 223),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: const Text(
                                      '\$340',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 250,
                            width: 200,
                            margin: const EdgeInsets.only(top: 20),
                            alignment: Alignment.bottomCenter,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/26.jpeg'),
                                  fit: BoxFit.fill,
                                ),
                                color: Color.fromARGB(255, 231, 223, 223),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Taj mahal',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    height: 45,
                                    width: 80,
                                    margin: const EdgeInsets.only(
                                        left: 20, right: 10),
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 231, 223, 223),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: const Text(
                                      '\$240',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            height: 200,
                            width: 200,
                            alignment: Alignment.bottomCenter,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/23.jpeg'),
                                  fit: BoxFit.fill,
                                ),
                                color: Color.fromARGB(255, 231, 223, 223),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Spain',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    height: 45,
                                    width: 80,
                                    margin: const EdgeInsets.only(
                                        left: 20, right: 10),
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 231, 223, 223),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: const Text(
                                      '\$340',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 20, top: 5),
                            height: 200,
                            width: 200,
                            alignment: Alignment.bottomCenter,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/22.jpeg'),
                                  fit: BoxFit.fill,
                                ),
                                color: Color.fromARGB(255, 231, 223, 223),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Rom',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    height: 45,
                                    width: 80,
                                    margin: const EdgeInsets.only(
                                        left: 20, right: 10),
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 231, 223, 223),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: const Text(
                                      '\$270',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 250,
                            width: 200,
                            alignment: Alignment.bottomCenter,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/24.jpeg'),
                                  fit: BoxFit.fill,
                                ),
                                color: Color.fromARGB(255, 231, 223, 223),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Bali',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    height: 45,
                                    width: 80,
                                    margin: const EdgeInsets.only(
                                        left: 20, right: 10),
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 231, 223, 223),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: const Text(
                                      '\$500',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            height: 200,
                            width: 200,
                            alignment: Alignment.bottomCenter,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/23.jpeg'),
                                  fit: BoxFit.fill,
                                ),
                                color: Color.fromARGB(255, 231, 223, 223),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Spain',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    height: 45,
                                    width: 80,
                                    margin: const EdgeInsets.only(
                                        left: 20, right: 10),
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 231, 223, 223),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: const Text(
                                      '\$340',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 250,
                            width: 200,
                            margin: const EdgeInsets.only(top: 20),
                            alignment: Alignment.bottomCenter,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/25.jpeg'),
                                  fit: BoxFit.fill,
                                ),
                                color: Color.fromARGB(255, 231, 223, 223),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Spain',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    height: 45,
                                    width: 80,
                                    margin: const EdgeInsets.only(
                                        left: 20, right: 10),
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 231, 223, 223),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: const Text(
                                      '\$360',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 540, 20, 2),
                height: 70,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.home,
                      color: Color.fromARGB(255, 219, 80, 55),
                      size: 35,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Color.fromARGB(255, 231, 223, 223),
                      size: 35,
                    ),
                    Icon(
                      Icons.local_movies,
                      color: Color.fromARGB(255, 231, 223, 223),
                      size: 35,
                    ),
                    Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 231, 223, 223),
                      size: 35,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
