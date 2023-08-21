import 'package:first_application/navigation_ex/third_screen.dart';
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirdScreen(),
                  ));
            },
            child: const Text('Goto thirdscreen'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go back to firstscreen'),
          ),
        ],
      ),
    );
  }
}
