import 'package:flutter/material.dart';

class WeekInParisUi extends StatelessWidget {
  const WeekInParisUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.sort),
              Icon(Icons.search),
            ],
          ),
          const Row(
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
          const Row(
            children: [
              Text('2021 fashion show in Pairs'),
            ],
          ),
          const Row(
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
              Icon(
                Icons.info_sharp,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    height: 300,
                    width: 250,
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                  const Row(
                    children: [
                      Text('Niketa William'),
                    ],
                  ),
                  const Row(
                    children: [
                      Text('Paris'),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 300,
                    width: 250,
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                  const Row(
                    children: [
                      Text('Niketa William'),
                    ],
                  ),
                  const Row(
                    children: [
                      Text('Paris'),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
