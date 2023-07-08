import 'package:flutter/material.dart';

class MediaQuaryDemo extends StatefulWidget {
  const MediaQuaryDemo({super.key});

  @override
  State<MediaQuaryDemo> createState() => _MediaQuaryDemoState();
}

class _MediaQuaryDemoState extends State<MediaQuaryDemo> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Center(
      child: Container(
        height: height * 0.2,
        width: width * 0.12,
        color: Colors.amber,
      ),
    ));
  }
}
