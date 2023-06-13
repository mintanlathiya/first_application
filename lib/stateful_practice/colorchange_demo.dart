import 'package:first_application/statefullexample/counter.controller.dart';
import 'package:flutter/material.dart';

class ColorChangeUI extends StatefulWidget {
  const ColorChangeUI({super.key});

  @override
  State<ColorChangeUI> createState() => _ColorChangeUiState();
}

class _ColorChangeUiState extends State<ColorChangeUI> {
  @override
  Widget build(BuildContext context) {
    CrossColor.colorListDemo();
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: GridView.builder(
                  itemCount: CrossColor.data.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) => Container(
                        alignment: Alignment.center,
                        color: CrossColor.outputData.contains(index)
                            ? Colors.red
                            : Colors.green,
                        child: Text(
                          ("${index + 1}"),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ))),
        ],
      ),
    );
  }
}
