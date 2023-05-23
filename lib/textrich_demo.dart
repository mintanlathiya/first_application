import 'package:flutter/material.dart';

class TextRichUi extends StatelessWidget {
  const TextRichUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: const TextSpan(
              text: 'G',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 140,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'O',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 60,
                  ),
                ),
                TextSpan(
                  text: ' O',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 60,
                  ),
                ),
                TextSpan(
                  text: ' g',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 100,
                  ),
                ),
                TextSpan(
                  text: ' l',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 100,
                  ),
                ),
                TextSpan(
                  text: ' e',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 60,
                    
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
