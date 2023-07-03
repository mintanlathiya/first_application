import 'package:first_application/simple_crud_demo/palindrome_controller.dart';
import 'package:flutter/material.dart';

class PalindromeNumber extends StatefulWidget {
  const PalindromeNumber({super.key});

  @override
  State<PalindromeNumber> createState() => _PalindromeNumberState();
}

class _PalindromeNumberState extends State<PalindromeNumber> {
  @override
  void dispose() {
    Palindrome.textPalindromeEditingController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(controller: Palindrome.textPalindromeEditingController),
          MaterialButton(
            onPressed: () {
              try {
                Palindrome.palindromeNum =
                    int.parse(Palindrome.textPalindromeEditingController.text);
              } catch (e) {
                Palindrome.palindromeString =
                    Palindrome.textPalindromeEditingController.text;
              }
              setState(() {});
            },
            child: const Text('submit'),
          ),
          if (Palindrome.msg != null) Text(Palindrome.msg!)
        ],
      ),
    );
  }
}
