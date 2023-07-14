import 'package:flutter/material.dart';

class HeroAnimationUiDemo extends StatefulWidget {
  const HeroAnimationUiDemo({super.key});

  @override
  State<HeroAnimationUiDemo> createState() => _HeroAnimationUiDemoState();
}

class _HeroAnimationUiDemoState extends State<HeroAnimationUiDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailPage(),
                  ));
            });
          },
          child: Hero(
            tag: 'backGround',
            child: Image.asset(
              'assets/images/35.jpeg',
              height: 100,
              width: 150,
            ),
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
            setState(() {});
          },
          child: Hero(
            tag: 'backGround',
            child: Image.asset(
              'assets/images/35.jpeg',
            ),
          ),
        ),
      ),
    );
  }
}
