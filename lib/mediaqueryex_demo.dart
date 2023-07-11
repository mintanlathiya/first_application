import 'package:flutter/material.dart';

class MediaQueryExDemo extends StatefulWidget {
  const MediaQueryExDemo({super.key});

  @override
  State<MediaQueryExDemo> createState() => _MediaQueryExDemoState();
}

class _MediaQueryExDemoState extends State<MediaQueryExDemo> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
                height: height * 0.144,
                width: width * 1,
                decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: height * 0.054,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.deepOrange,
                          radius: height * 0.048,
                          child:
                              Icon(Icons.airplane_ticket, size: height * 0.036),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(' Flights '),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: height * 0.054,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: height * 0.048,
                          child: Icon(Icons.hotel, size: height * 0.036),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(' Hotels '),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: height * 0.054,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: height * 0.048,
                          child: Icon(Icons.train, size: height * 0.036),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(' Trains '),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: height * 0.054,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.purple,
                          radius: height * 0.048,
                          child:
                              Icon(Icons.holiday_village, size: height * 0.036),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(' Holidays '),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
