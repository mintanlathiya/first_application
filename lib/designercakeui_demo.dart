import 'package:flutter/material.dart';

class DesignerCakeUi extends StatelessWidget {
  const DesignerCakeUi({super.key});

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
                  Icons.arrow_back_ios,
                  size: 27,
                ),
                Icon(
                  Icons.more_vert,
                  size: 27,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 350,
                  width: 605,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage('assets/images/18.jpeg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 350,
                  width: 605,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage('assets/images/19.jpeg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 350,
                  width: 605,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage('assets/images/20.jpeg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.more_horiz,
                size: 60,
                color: Colors.brown,
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Blueberry cake',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(
                  '5.0',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 5),
            child: Row(
              children: [
                Text(
                    'Blue berry cake with fresh cream taste and fresh ingredients'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 5),
            child: Row(
              children: [
                Text('Of Blueberry. We have wide range of cakes on our store'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 20),
            child: Row(
              children: [
                Text('Also we can order for events.'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 80,
                  width: 200,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 236, 230, 230),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(' Delivery  Time'),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.watch_later_outlined),
                            Text(
                              ' 45Mins',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 140,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 236, 230, 230),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(' Total Price'),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              ' \$65.00',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    height: 70,
                    width: 180,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Buy Now',
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.add_circle_outline_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
