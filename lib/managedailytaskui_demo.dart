import 'package:flutter/material.dart';

class ManageDailyTaskUi extends StatelessWidget {
  const ManageDailyTaskUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 70,
              right: 70,
            ),
            height: 400,
            width: 400,
            decoration: const BoxDecoration(
                color: Colors.blue,
                image:
                    DecorationImage(image: AssetImage('assets/images/7.jpeg')),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(200),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 30,
              top: 30,
            ),
            child: Row(
              children: [
                Text(
                  'Manage Your',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 30,
              top: 12,
            ),
            child: Row(
              children: [
                Text(
                  'daily task',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 30,
              top: 20,
            ),
            child: Row(
              children: [Text('team and Project management with')],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 30,
              top: 5,
            ),
            child: Row(
              children: [Text('solution providing App')],
            ),
          ),
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 50,
                      left: 30,
                    ),
                    height: 80,
                    width: 80,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 80,
                      left: 70,
                    ),
                    child: Text(
                      'Get Started',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
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
