import 'package:first_application/listofmap_demo.dart/row_data.dart';
import 'package:flutter/material.dart';

class GridViewCountDemo extends StatelessWidget {
  const GridViewCountDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: GridView.count(
            //childAspectRatio: 2,
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 3,
            scrollDirection: Axis.horizontal,
            children: List.generate(
                gridData.length,
                (index) => Container(
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(gridData[index]['icon']),
                          Text(gridData[index]['name']),
                        ],
                      ),
                    )),
          )),
        ],
      ),
    );
  }
}
