import 'package:flutter/material.dart';

class DrawerUi extends StatelessWidget {
  const DrawerUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Gmail'),
        actions: const [Icon(Icons.add)],
      ),
      drawer: const Drawer(
      
      ),
      endDrawer: const Drawer(),
    );
  }
}
