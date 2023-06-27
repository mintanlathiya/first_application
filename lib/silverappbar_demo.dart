import 'package:flutter/material.dart';

class SilverAppbarDemo extends StatefulWidget {
  const SilverAppbarDemo({super.key});

  @override
  State<SilverAppbarDemo> createState() => _SilverAppbarDemoState();
}

class _SilverAppbarDemoState extends State<SilverAppbarDemo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Mintan_Lathiya'),
            leading: Icon(Icons.lock),
            actions: [
              Icon(Icons.menu),
              Icon(Icons.menu),
            ],
            //centerTitle: true,
            expandedHeight: 350,
            flexibleSpace: Image(
              image: AssetImage('assets/images/35.jpeg'),
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
