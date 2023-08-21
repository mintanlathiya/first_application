import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.popUntil(context, ModalRoute.withName('/'));
              // Navigator.pushNamed(context, '/');
            },
            child: const Text('Go backto firstscreen'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              //Navigator.pop(context);
              Navigator.pushNamed(context, '/secoundScreen');
            },
            child: const Text('Go back to secoundscreen'),
          ),
        ],
      ),
    );
  }
}
