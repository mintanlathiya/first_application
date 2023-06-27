import 'package:first_application/bottom_navigationbar_demo/home_navigation.dart';
import 'package:first_application/bottom_navigationbar_demo/liabary_navigation.dart';
import 'package:first_application/bottom_navigationbar_demo/short_navigation.dart';
import 'package:first_application/bottom_navigationbar_demo/subscrption_navigation.dart';
import 'package:flutter/material.dart';

class BottomNavigationbarDemo extends StatefulWidget {
  const BottomNavigationbarDemo({super.key});

  @override
  State<BottomNavigationbarDemo> createState() =>
      _BottomNavigationbarDemoState();
}

class _BottomNavigationbarDemoState extends State<BottomNavigationbarDemo> {
  List<Map> navigationData = [
    {
      'title': 'home',
      'icon': Icons.home,
    },
    {
      'title': 'shots',
      'icon': Icons.video_call,
    },
    {
      'title': '',
      'icon': Icons.add,
    },
    {
      'title': 'subcriptions',
      'icon': Icons.bookmark,
    },
    {
      'title': 'Liabary',
      'icon': Icons.book,
    }
  ];
  List<Widget> myScreens = [
    const HomeNavigation(),
    const ShortDemo(),
    const SubscriptionDemo(),
    const LiabaryDemo(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            (selectedIndex = value);
            setState(() {});
          },
          currentIndex: selectedIndex,
          items: List.generate(
              navigationData.length,
              (index) => BottomNavigationBarItem(
                    backgroundColor: Colors.cyan,
                    icon: Icon(
                      navigationData[index]['icon'],
                      color: Colors.black,
                    ),
                    label: navigationData[index]['title'],
                  ))),
      body: myScreens.elementAt(selectedIndex),
    );
  }
}
