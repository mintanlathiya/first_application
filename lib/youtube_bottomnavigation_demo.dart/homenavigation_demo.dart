import 'package:first_application/youtube_bottomnavigation_demo.dart/youtube_rowdata.dart';
import 'package:first_application/youtube_bottomnavigation_demo.dart/youtubeuser_modal_demo.dart';
import 'package:flutter/material.dart';

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({super.key});

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  @override
  Widget build(BuildContext context) {
    for (var element in youtubeenddrawerDetails) {
      youtubeEnddrawerData.add(YoutubeEndDrawerBottomSheet.fromJson(element));
    }
    return const Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.queue_play_next,
                  size: 40,
                  color: Colors.red,
                ),
                Text(
                  'YouTube',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.live_tv,
                  size: 40,
                  color: Colors.red,
                ),
                // const Icon(
                //   Icons.notifications,
                //   size: 40,
                //   color: Colors.red,
                // ),
                // const Icon(
                //   Icons.search,
                //   size: 40,
                //   color: Colors.red,
                // ),
                // InkWell(
                //   onTap: () => showModalBottomSheet(
                //       isScrollControlled: true,
                //       context: context,
                //       builder: (context) => Container(
                //             padding: const EdgeInsets.all(10),
                //             height: 1000,
                //             width: 500,
                //             color: Colors.white,
                //             child: Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   const Icon(
                //                     Icons.cancel_outlined,
                //                     size: 35,
                //                   ),
                //                   const Padding(
                //                     padding: EdgeInsets.all(15),
                //                     child: Row(
                //                       children: [
                //                         CircleAvatar(
                //                           backgroundImage: AssetImage(
                //                               'assets/images/35.jpeg'),
                //                           radius: 40,
                //                         ),
                //                         Padding(
                //                           padding: EdgeInsets.only(left: 25),
                //                           child: Column(
                //                             crossAxisAlignment:
                //                                 CrossAxisAlignment.start,
                //                             children: [
                //                               Text('Mintan Lathiya'),
                //                               SizedBox(
                //                                 height: 15,
                //                               ),
                //                               Text('@mintanlathiya6547'),
                //                               SizedBox(
                //                                 height: 15,
                //                               ),
                //                               Text(
                //                                 'Manage your Google Account',
                //                                 style: TextStyle(
                //                                     color: Colors.deepPurple),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                         Spacer(),
                //                         Icon(Icons.arrow_forward_ios)
                //                       ],
                //                     ),
                //                   ),
                //                   ...List.generate(youtubeEnddrawerData.length,
                //                       (index) {
                //                     if (youtubeEnddrawerData[index].icon ==
                //                         null) {
                //                       return const Divider(
                //                         thickness: 3,
                //                       );
                //                     } else {
                //                       return ListTile(
                //                         leading: Icon(
                //                             youtubeEnddrawerData[index].icon!),
                //                         title: Text(youtubeEnddrawerData[index]
                //                             .iconName!),
                //                       );
                //                     }
                //                   }),
                //                   const Row(
                //                     mainAxisAlignment: MainAxisAlignment.center,
                //                     children: [
                //                       Text('Privacy policy .Terms of Service'),
                //                     ],
                //                   ),
                //                 ]),
                //           )),
                //   child: const Padding(
                //     padding: EdgeInsets.all(8.0),
                //     child: CircleAvatar(
                //       backgroundImage: AssetImage('assets/images/35.jpeg'),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          // const Column(
          //   children: [],
          // ),
        ],
      ),
    );
  }
}
