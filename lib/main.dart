import 'package:first_application/navigation_ex/first_screen.dart';
import 'package:first_application/navigation_ex/secound_screen.dart';
import 'package:first_application/navigation_ex/third_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstScreen(),
      initialRoute: '/',
      routes: {
        '/secoundScreen': (context) => const SecoundScreen(),
        '/thirdScreen': (context) => const ThirdScreen(),
      },
    );
  }
}
