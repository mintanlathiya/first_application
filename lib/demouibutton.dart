import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 850,
        width: 620,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/28.jpeg',
              ),
              fit: BoxFit.fill),
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                          height: 618,
                          width: 620,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 236, 232, 232),
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(30))),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(20),
                                  height: 50,
                                  width: 470,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 225, 209, 209),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 153,
                                        alignment: Alignment.center,
                                        decoration: const BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30))),
                                        child: const Text(
                                          'Avia',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 80),
                                        child: Text(
                                          'Train',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 100),
                                        child: Text(
                                          'car',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: const Icon(Icons.close),
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  '2  tickets',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 20, left: 20, right: 20),
                                  height: 170,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  child: const Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Divider(
                                          height: 0,
                                          color: Colors.black,
                                          endIndent: 45,
                                          indent: 45,
                                          thickness: 2,
                                        ),
                                      ),
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 35),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Icon(
                                                  Icons.circle_outlined,
                                                  color: Colors.orangeAccent,
                                                ),
                                                RotatedBox(
                                                  quarterTurns: 1,
                                                  child: Icon(
                                                    Icons.airplanemode_active,
                                                    color: Colors.orangeAccent,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.circle_outlined,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('New York'),
                                            Text(
                                              '12h',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text('Great Britain'),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '10:40am',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text('4.26.2021,tue'),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  '12:40pm',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text('4.27.2021,wed'),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const Divider(
                                  height: 0,
                                  color: Colors.black,
                                  endIndent: 35,
                                  indent: 35,
                                  thickness: 2,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  height: 80,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  child: const Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Row(
                                      children: [
                                        Icon(Icons.brush_rounded),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('American Airlines'),
                                        ),
                                        Spacer(),
                                        Text(
                                          '\$120',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 20, left: 20, right: 20),
                                  height: 170,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  child: const Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Stack(
                                          children: [
                                            Divider(
                                              height: 0,
                                              color: Colors.black,
                                              endIndent: 45,
                                              indent: 45,
                                              thickness: 2,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 35),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Icon(
                                                    Icons.circle_outlined,
                                                    color: Colors.orangeAccent,
                                                  ),
                                                  RotatedBox(
                                                    quarterTurns: 1,
                                                    child: Icon(
                                                      Icons.airplanemode_active,
                                                      color:
                                                          Colors.orangeAccent,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.circle_outlined,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('New York'),
                                            Text(
                                              '12h',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text('Great Britain'),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '12:22am',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text('4.26.2021,tue'),
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  '2:22am',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text('4.27.2021,wed'),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const Divider(
                                  height: 0,
                                  color: Colors.black,
                                  endIndent: 35,
                                  indent: 35,
                                  thickness: 2,
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  height: 33,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(30))),
                                )
                              ],
                            ),
                          ),
                        ));
              },
              icon: const Icon(Icons.add))
        ],
      ),
    );
  }
}
