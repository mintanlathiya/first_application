import 'package:flutter/material.dart';

class WeekInParisUi extends StatelessWidget {
  const WeekInParisUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.sort),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.search),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    'Week in Paris',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text('2021 fashion show in Pairs'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Explore',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.info_sharp,
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Recommended',
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'New Models',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '2020 Show',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 300,
                        width: 250,
                        decoration: const BoxDecoration(
                            color: Colors.green,
                             image: DecorationImage(image: AssetImage('assets/images/3.jpeg')),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Niketa William'),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Paris'),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 300,
                        width: 250,
                        decoration: const BoxDecoration(
                            color: Colors.green,
                             image: DecorationImage(
                                image: AssetImage('assets/images/4.jpeg')),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                      const Text('Trisha Louis'),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('London'),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(45),
              height: 230,
              width: 540,
              decoration: const BoxDecoration(
                  color: Colors.green,
                   image: DecorationImage(
                      image: AssetImage('assets/images/5.jpeg')),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ],
        ),
      ),
    );
  }
}
