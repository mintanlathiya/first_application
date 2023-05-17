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
                        
                        image: DecorationImage(
                            image: NetworkImage(
                                'data:image/jpeg;base64,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')),
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
