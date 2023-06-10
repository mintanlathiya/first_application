import 'package:first_application/listofmap_demo.dart/row_data.dart';
import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            children: List.generate(
                gridData.length,
                (index) => Container(
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(gridData[index]['icon']),
                          Text(gridData[index]['name'])
                        ],
                      ),
                    )),
          ))
        ],
      ),
    );
  }
}
