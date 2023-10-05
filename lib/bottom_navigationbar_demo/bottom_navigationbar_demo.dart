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
    // {
    //   'title': '',
    //   'icon': Icons.add,
    // },
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
          //backgroundColor: Colors.red,
          //elevation: 20,
          //fixedColor: Colors.red,
          //iconSize: 50,
          //selectedFontSize: 50,
          // selectedIconTheme: const IconThemeData(
          //   color: Colors.amber,
          //   size: 30,
          //   fill: 0.5,
          // ),
          selectedItemColor: Colors.pink,
          // selectedLabelStyle: const TextStyle(
          //   color: Colors.amber,
          //   fontWeight: FontWeight.bold,
          //   fontSize: 30,
          // ),
          //showUnselectedLabels: true,
          //showSelectedLabels: true,
          //type: BottomNavigationBarType.fixed,
          //unselectedFontSize: 30,
          // unselectedItemColor: Colors.green,
          // unselectedLabelStyle:
          //     const TextStyle(fontSize: 30, color: Colors.amber),
          //useLegacyColorScheme: false,
          onTap: (value) {
            (selectedIndex = value);
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          items: List.generate(
              navigationData.length,
              (index) => BottomNavigationBarItem(
                    //tooltip: 'mini',
                    // activeIcon: const Icon(Icons.add),

                    backgroundColor: const Color.fromARGB(255, 34, 92, 100),
                    icon: Icon(
                      navigationData[index]['icon'],
                      //color: Colors.black,
                    ),
                    label: navigationData[index]['title'],
                  ))),
      //body: myScreens.elementAt(selectedIndex),
      body: myScreens[selectedIndex],
    );
  }
}
