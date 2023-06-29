import 'package:first_application/youtube_bottomnavigation_demo.dart/homenavigation_demo.dart';
import 'package:first_application/youtube_bottomnavigation_demo.dart/librarynavigation_demo.dart';
import 'package:first_application/youtube_bottomnavigation_demo.dart/shortsnavigation_demo.dart';
import 'package:first_application/youtube_bottomnavigation_demo.dart/subscriptionnavigation_demo.dart';
import 'package:first_application/youtube_bottomnavigation_demo.dart/youtube_rowdata.dart';
import 'package:flutter/material.dart';

class YoutubeBottomNavigationDemo extends StatefulWidget {
  const YoutubeBottomNavigationDemo({super.key});

  @override
  State<YoutubeBottomNavigationDemo> createState() =>
      _YoutubeBottomNavigationDemoState();
}

class _YoutubeBottomNavigationDemoState
    extends State<YoutubeBottomNavigationDemo> {
  List<Widget> youtubescreen = [
    const HomeNavigation(),
    const ShortsNavigation(),
    const SubscriptionsNavigation(),
    const LibraryNavigation(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        fixedColor:selectedIndex==1? Colors.black:Colors.black,
        //type: BottomNavigationBarType.fixed,
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
          
        },
        currentIndex: selectedIndex,
        items: List.generate(
          youtubeNavigationData.length,
          (index) => BottomNavigationBarItem(
            backgroundColor: (youtubeNavigationData[index]['title'] == 'shots')
                ? Colors.transparent
                : Colors.white,
            icon: Icon(
              youtubeNavigationData[index]['icon'],
              color: Colors.black,
            ),
            label: youtubeNavigationData[index]['title'],
          ),
        ),
      ),
      body: youtubescreen.elementAt(selectedIndex),
    );
  }
}
