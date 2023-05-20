import 'package:flutter/material.dart';

class DeliciousFoodUi extends StatelessWidget {
  const DeliciousFoodUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios),
                Icon(Icons.more_vert),
              ],
            ),
          ),
          Container(
            height: 500,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/11.jpeg'),
                  fit: BoxFit.fitHeight),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "Eggs  Curry",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                Icon(Icons.timelapse_rounded),
                Text(
                  '25 Mins',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 80,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Eggs  curry  with  tomoto  and  cucumbers  our  chefs'),
                Text(
                    'special  healthy  and  fat  free  dish  for  those  who  want'),
                Text('to  lose  weight.'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                const Column(
                  children: [
                    Text(
                      'Total price',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\$15..00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 197, 185, 185),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: const Icon(
                    Icons.favorite_border,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  height: 60,
                  width: 150,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Add to cart',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.add_circle,
                        color: Colors.white,
                        size: 38,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
