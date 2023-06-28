import 'package:flutter/material.dart';

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({super.key});

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images-eu.ssl-images-amazon.com/images/G/31/AUTO_2021/BAU_click_pages/Helmets/3.jpg'))),
        ),
        Opacity(
          opacity: 0.6,
          child: Container(
            height: 80,
            width: 100,
            color: Colors.black,
            child: const Text(
              'data',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
        // Container(
        //   height: 100,
        //   width: 100,
        //   color: Colors.black54,
        // ),
        // Container(
        //   height: 200,
        //   width: 200,
        //   color: Colors.black26,
        //   child: const Opacity(
        //     opacity: 0.3,
        //     child: Image(
        //       image: AssetImage('assets/images/24.jpeg'),
        //       fit: BoxFit.fill,
        //     ),
        //   ),
        // ),
        // const Text(
        //   'home cointain here',
        //   style: TextStyle(color: Colors.white),
        // ),
      ],
    ));
  }
}
