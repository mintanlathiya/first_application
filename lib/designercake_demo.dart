import 'package:flutter/material.dart';

class DesignerCake extends StatelessWidget {
  const DesignerCake({super.key});

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
                Icon(
                  Icons.workspaces,
                  size: 27,
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  size: 27,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
              bottom: 5,
            ),
            child: Row(
              children: [
                Text(
                  'Fresh Taste of',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  'Designer cakes',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 225, 214, 214),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: const Icon(
                    Icons.cake,
                    size: 27,
                  ),
                ),
                Container(
                  height: 55,
                  width: 55,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 225, 214, 214),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: const Icon(
                    Icons.icecream,
                    size: 27,
                  ),
                ),
                Container(
                  height: 55,
                  width: 55,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 225, 214, 214),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: const Icon(
                    Icons.local_drink_rounded,
                    size: 27,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 55,
                  width: 55,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  child: (const Text(
                    'All',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 275,
                    width: 220,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 225, 214, 214),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 160,
                          width: 180,
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            image: DecorationImage(
                                image: AssetImage('assets/images/14.jpeg'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Cold Coffee",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Lime with coffee",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "\$24.00",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 197, 185, 185),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                              child: const Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Container(
                    height: 275,
                    width: 220,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 225, 214, 214),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 160,
                          width: 180,
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            image: DecorationImage(
                                image: AssetImage('assets/images/15.jpeg'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Strawberry Cake",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Cream with Strawberry",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "\$12.00",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 197, 185, 185),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                              child: const Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 250,
                    width: 220,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 225, 214, 214),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          height: 150,
                          width: 180,
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            image: DecorationImage(
                                image: AssetImage('assets/images/16.jpeg'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Blueberry cake",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Cream with berry",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "\$65.00",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 197, 185, 185),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                              child: const Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Container(
                    height: 250,
                    width: 220,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 225, 214, 214),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          height: 150,
                          width: 180,
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            image: DecorationImage(
                                image: AssetImage('assets/images/17.jpeg'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Hot Coffee",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Fresh Coffee",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "\$30.00",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 197, 185, 185),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                              child: const Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Container(
                    height: 55,
                    width: 200,
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'View More',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 50),
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.green,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
