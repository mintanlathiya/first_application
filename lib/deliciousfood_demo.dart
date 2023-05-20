import 'package:flutter/material.dart';

class DeliciousFood extends StatelessWidget {
  const DeliciousFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.sort,
                  size: 27,
                ),
                Container(
                  height: 55,
                  width: 50,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(10),
                      )),
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 27,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 15,
              bottom: 10,
            ),
            child: Row(
              children: [
                Text(
                  'Delicious Food',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text(
                  'We made fresh and Healthy food',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
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
                    Icons.shopping_cart,
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
                    Icons.cake_rounded,
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
                    Icons.local_drink,
                    size: 27,
                  ),
                ),
                Container(
                  height: 55,
                  width: 55,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: const Icon(
                    Icons.fastfood_outlined,
                    color: Colors.white,
                    size: 27,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 275,
                width: 220,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                            image: AssetImage('assets/images/9.jpeg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Crab Ramen",
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
                          "Spicy with garlic",
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
              Container(
                height: 275,
                width: 220,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                            image: AssetImage('assets/images/10.jpeg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Chicken slice",
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
                          "Real chicken",
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
          Container(
            margin: const EdgeInsets.symmetric(vertical: 23),
            padding: const EdgeInsets.all(7),
            height: 200,
            width: 520,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 225, 214, 214),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text(
                            "Eggs Curry",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Eggs to tomato and souce",
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "\$15.00",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        height: 160,
                        width: 180,
                        decoration: const BoxDecoration(
                          color: Colors.amber,
                          image: DecorationImage(
                              image: AssetImage('assets/images/11.jpeg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 60,
            width: 520,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 34, 27, 27),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 197, 185, 185),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                const Icon(
                  Icons.wallet,
                  color: Colors.white,
                  size: 27,
                ),
                const Icon(
                  Icons.contact_support_outlined,
                  color: Colors.white,
                  size: 27,
                ),
                const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 27,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
