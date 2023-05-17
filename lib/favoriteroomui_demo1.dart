import 'package:flutter/material.dart';

class FavoriteRoom extends StatelessWidget {
  const FavoriteRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: 250,
            decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage('assets/images/1.jpeg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
