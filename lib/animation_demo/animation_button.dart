import 'package:flutter/material.dart';

class AnimatiedButtunUi extends StatefulWidget {
  const AnimatiedButtunUi({super.key});

  @override
  State<AnimatiedButtunUi> createState() => _AnimatiedButtunUiState();
}

class _AnimatiedButtunUiState extends State<AnimatiedButtunUi> {
  bool click = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
            onPressed: () {
              click = !click;
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container();
                },
              );

              setState(() {});
            },
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(click
                  ? const Color.fromARGB(255, 174, 133, 118)
                  : Colors.white),

              side: MaterialStatePropertyAll(
                click
                    ? const BorderSide(
                        color: Colors.brown, width: 3, strokeAlign: 5)
                    : const BorderSide(
                        color: Color.fromARGB(255, 212, 187, 179),
                        width: 1,
                        strokeAlign: 5),
              ),
              // elevation: MaterialStatePropertyAll(click ? 10 : 20),
            ),
            child: Text(
              'Animation',
              style: TextStyle(color: click ? Colors.white : Colors.black),
            )),
      ),
    );
  }
}
