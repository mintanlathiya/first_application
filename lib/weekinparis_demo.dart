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
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Icon(
                    Icons.sort,
                    size: 50,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Icon(
                    Icons.search,
                    size: 50,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text(
                    'Week in Paris',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text('2021 fashion show in Pairs'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, top: 18),
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
                      size: 40,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 300,
                        width: 250,
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            image: DecorationImage(
                                image: AssetImage('assets/images/3.jpeg'),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Niketa William',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Text('Paris'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 300,
                        width: 250,
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            image: DecorationImage(
                                image: AssetImage('assets/images/4.jpeg'),
                                fit: BoxFit.fill),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Trisha Louis',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Text('London'),
                          ],
                        ),
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
                      image: AssetImage('assets/images/5.jpeg'),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ],
        ),
      ),
    );
  }
}
