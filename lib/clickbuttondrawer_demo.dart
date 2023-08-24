import 'package:flutter/material.dart';

class ClickDrawerUi extends StatelessWidget {
  ClickDrawerUi({super.key});
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(),
      drawer: const Drawer(
        child: Column(
          children: [
            Text('data'),
          ],
        ),
      
      body: Center(
        child: IconButton(
          onPressed: () {
            _key.currentState!.openDrawer();
          },
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}
