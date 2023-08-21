import 'package:flutter/material.dart';

class SecoundScreen extends StatefulWidget {
  const SecoundScreen({super.key});

  @override
  State<SecoundScreen> createState() => _SecoundScreenState();
}

class _SecoundScreenState extends State<SecoundScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const ThirdScreen(),
              //     ));
              Navigator.pushNamed(context, '/thirdScreen');
            },
            child: const Text('Goto thirdscreen'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              //Navigator.pop(context);
              Navigator.pushNamed(context, '/');
            },
            child: const Text('Go back to firstscreen'),
          ),
        ],
      ),
    );
  }
}
