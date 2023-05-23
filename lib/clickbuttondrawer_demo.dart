import 'package:flutter/material.dart';

class ClickDrawerUi extends StatelessWidget {
  const ClickDrawerUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(
        child: Column(
          children: [
            Text('data'),
          ],
        ),
      ),
      body: Center(
        child: IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}
