import 'package:first_application/listofmap_demo.dart/row_data.dart';
import 'package:flutter/material.dart';

class GridViewCustomDemo extends StatelessWidget {
  const GridViewCustomDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.custom(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  color: Colors.pink,
                  child: Column(
                    children: [
                      Icon(gridData[index]['icon']),
                      Text(
                        gridData[index]['name'],
                      )
                    ],
                  ),
                ),
                childCount: gridData.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
