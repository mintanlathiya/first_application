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
    Container(),
    const SubscriptionsNavigation(),
    const LibraryNavigation(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: selectedIndex == 1 ? Colors.black : Colors.black,
        onTap: (value) {
          if (value != 2) {
            selectedIndex = value;
          } else {
            showModalBottomSheet(
              context: context,
              backgroundColor: Colors.transparent,
              builder: (context) => Container(
                padding: const EdgeInsets.all(20),
                height: 400,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Create',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.cancel_outlined,
                              ))
                        ],
                      ),
                      ...List.generate(
                        youtubeBottomSheetDetails.length,
                        (index) => ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 30,
                              child: Icon(
                                  youtubeBottomSheetDetails[index]['icon']),
                            ),
                            title: Text(
                                youtubeBottomSheetDetails[index]['iconName'])),
                      ),
                    ]),
              ),
            );
          }
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
