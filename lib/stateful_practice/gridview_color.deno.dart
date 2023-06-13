import 'package:first_application/statefullexample/counter.controller.dart';
import 'package:flutter/material.dart';

class GridViewColor extends StatefulWidget {
  const GridViewColor({super.key});

  @override
  State<GridViewColor> createState() => _GridViewColorState();
}

class _GridViewColorState extends State<GridViewColor> {
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                children: List.generate(
                    colorList.length,
                    (index) => InkWell(
                          onTap: () {
                            ColorSwap.colorController(index);
                            setState(() {});
                          },
                          child: Container(
                            color: colorList[index],
                          ),
                        ))),
          )
        ],
      ),
    );
  }
}
