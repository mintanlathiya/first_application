import 'package:first_application/listofmap_demo.dart/row_data.dart';
import 'package:flutter/material.dart';

class PageViewReelDemo extends StatefulWidget {
  const PageViewReelDemo({super.key});

  @override
  State<PageViewReelDemo> createState() => _PageViewReelDemoState();
}

class _PageViewReelDemoState extends State<PageViewReelDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: PageView(
      //   scrollDirection: Axis.vertical,
      //   children: List.generate(
      //       pageViewReelList.length,
      //       (index) => Container(
      //             decoration: BoxDecoration(
      //               image: DecorationImage(
      //                 image: AssetImage(
      //                   pageViewReelList[index]['url'],
      //                 ),
      //                 fit: BoxFit.fill,
      //               ),
      //             ),
      //           )),
      // ),
      // body: PageView.builder(
      //   itemCount: pageViewReelList.length,
      //   scrollDirection: Axis.vertical,
      //   itemBuilder: (context, index) {
      //     return Image(
      //       image: AssetImage(
      //         pageViewReelList[index]['url'],
      //       ),
      //       fit: BoxFit.fill,
      //     );
      //   },
      // ),
      body: PageView.custom(
        scrollDirection: Axis.vertical,
        childrenDelegate: SliverChildBuilderDelegate(
          childCount: pageViewReelList.length,
          (context, index) => Image(
            image: AssetImage(pageViewReelList[index]['url']),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
