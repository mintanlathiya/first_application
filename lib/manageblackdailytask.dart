import 'package:flutter/material.dart';

class ManagedailyBlackTask extends StatelessWidget {
  const ManagedailyBlackTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 12, 12, 12),
      body: Column(
        children: [
          Container(
            height: 400,
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage('assets/images/33.jpeg'),
                fit: BoxFit.fill,
              ),
            ),
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
                    color: Colors.white,
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
                    color: Colors.white,
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
              children: [
                Text(
                  'team  and  Project  management  with',
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 30,
              top: 5,
            ),
            child: Row(
              children: [
                Text(
                  'solution  providing  App',
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50, left: 30),
                    height: 80,
                    width: 80,
                    decoration: const BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 80,
                      left: 68,
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
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
