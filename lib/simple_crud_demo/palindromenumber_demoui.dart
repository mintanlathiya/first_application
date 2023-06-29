import 'package:first_application/simple_crud_demo/palindrome_controller.dart';
import 'package:flutter/material.dart';

class PalindromeNumber extends StatefulWidget {
  const PalindromeNumber({super.key});

  @override
  State<PalindromeNumber> createState() => _PalindromeNumberState();
}

class _PalindromeNumberState extends State<PalindromeNumber> {
  final TextEditingController _textPalindromeEditingController =
      TextEditingController();
  @override
  void dispose() {
    _textPalindromeEditingController.dispose();
    super.dispose();
  }

  int? enterNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(controller: _textPalindromeEditingController),
          MaterialButton(
            onPressed: () {
              enterNumber = int.parse(_textPalindromeEditingController.text);
              palindromeNum(enterNumber!);
              setState(() {});
            },
            child: const Text('submit'),
          ),
          if (enterNumber != null) Text(palindromeNum(enterNumber!))
        ],
      ),
    );
  }
}
