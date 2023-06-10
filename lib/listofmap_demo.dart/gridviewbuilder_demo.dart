import 'package:first_application/listofmap_demo.dart/row_data.dart';
import 'package:flutter/material.dart';

class GridViewBuilderDemo extends StatelessWidget {
  const GridViewBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 3),
            itemCount: gridData.length,
            itemBuilder: (context, index) => Container(
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    gridData[index]['icon'],
                    size: 50,
                  ),
                  Text(gridData[index]['name']),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
