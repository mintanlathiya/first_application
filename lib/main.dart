import 'package:first_application/youtube_bottomnavigation_demo.dart/youtubebottomnavigationbase_demo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: YoutubeBottomNavigationDemo(),
    );
  }
}
