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
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: height * 0.18,
                width: width * 0.96,
                color: Colors.amber,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: height * 0.06 + width * 0.1,
                        child: Icon(Icons.airplane_ticket,
                            size: height * 0.024 + width * 0.04),
                      ),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
