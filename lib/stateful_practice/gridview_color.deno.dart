import 'package:first_application/listofmap_demo.dart/row_data.dart';
import 'package:flutter/material.dart';

class GridViewColor extends StatefulWidget {
  const GridViewColor({super.key});

  @override
  State<GridViewColor> createState() => _GridViewColorState();
}

class _GridViewColorState extends State<GridViewColor> {
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
                    (index) => Container(
                          color: colorList[index]['color'],
                        ))),
          )
        ],
      ),
    );
  }
}
