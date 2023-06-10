import 'package:first_application/listofmap_demo.dart/row_data.dart';
import 'package:flutter/material.dart';

class GridViewExtentDemo extends StatelessWidget {
  const GridViewExtentDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.extent(
                maxCrossAxisExtent: 150,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                children: List.generate(
                    gridData.length,
                    (index) => Container(
                          color: Colors.grey,
                          child: Column(
                            children: [
                              Icon(gridData[index]['icon']),
                              Text(
                                gridData[index]['name'],
                              )
                            ],
                          ),
                        ))),
          ),
        ],
      ),
    );
  }
}
