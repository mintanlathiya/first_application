import 'package:flutter/material.dart';

class DreamHouse extends StatelessWidget {
  const DreamHouse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 500,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/12.jpeg'),
                    fit: BoxFit.fill),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 100, left: 40),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'The Perfect Dream',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        'House for You',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Explore  your  dream  house  with  advanced'),
                      Text('control  system'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          focusColor: Colors.white12,
          child: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ));
  }
}
