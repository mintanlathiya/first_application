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
    for (var element in youtubeHomePageApi) {
      youtubeHomePageData.add(YoutubeHomePageDetail.fromJson(element));
    }
    for (var element in youtubeShortsHomeApi) {
      youtubeShortsHomeData.add(YoutubeShortsHomeDetail.fromJson(element));
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.queue_play_next,
                    size: 40,
                    color: Colors.red,
                  ),
                  const Text(
                    'YouTube',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.live_tv,
                    size: 40,
                  ),
                  const Icon(
                    Icons.notifications,
                    size: 40,
                  ),
                  const Icon(
                    Icons.search,
                    size: 40,
                  ),
                  InkWell(
                    onTap: () => showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => Container(
                              padding: const EdgeInsets.all(10),
                              height: 1000,
                              width: 500,
                              color: Colors.white,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Icon(
                                        Icons.cancel_outlined,
                                        size: 35,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(15),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/images/35.jpeg'),
                                            radius: 40,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 25),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('Mintan Lathiya'),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text('@mintanlathiya6547'),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  'Manage your Google Account',
                                                  style: TextStyle(
                                                      color: Colors.deepPurple),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          Icon(Icons.arrow_forward_ios)
                                        ],
                                      ),
                                    ),
                                    ...List.generate(
                                        youtubeEnddrawerData.length, (index) {
                                      if (youtubeEnddrawerData[index].icon ==
                                          null) {
                                        return const Divider(
                                          thickness: 3,
                                        );
                                      } else {
                                        return ListTile(
                                          leading: Icon(
                                              youtubeEnddrawerData[index]
                                                  .icon!),
                                          title: Text(
                                              youtubeEnddrawerData[index]
                                                  .iconName!),
                                        );
                                      }
                                    }),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                            'Privacy policy .Terms of Service'),
                                      ],
                                    ),
                                  ]),
                            )),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/35.jpeg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(right: 15),
                      height: 40,
                      width: 55,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 219, 212, 212),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Icon(Icons.compass_calibration_outlined),
                    ),
                  ),
                  ...List.generate(
                    topicLists.length,
                    (index) => Container(
                      margin: const EdgeInsets.only(right: 15),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      height: 40,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        topicLists[index],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Text(
                    'Send feedback',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurpleAccent,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 370,
              width: 620,
              color: Colors.transparent,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 200,
                      width: 800,
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.bottomRight,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/34.jpeg'),
                        ),
                      ),
                      child: Container(
                        height: 20,
                        width: 50,
                        color: Colors.black,
                        alignment: Alignment.center,
                        child: const Text(
                          '0:00',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/34.jpeg'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Share Your Favorite Finds with Friends',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Find a favorite on facebook marketplace.',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'AD - Facebook',
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.more_vert),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.white,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      height: 40,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 52, 21, 104),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Download  ',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.addchart_rounded,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ...List.generate(
              youtubeHomePageData.length,
              (index) => Container(
                height: 298,
                width: 610,
                color: Colors.transparent,
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      alignment: Alignment.bottomRight,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  youtubeHomePageData[index].videoProfile!),
                              fit: BoxFit.fill)),
                      child: Container(
                        height: 20,
                        width: 50,
                        color: Colors.black,
                        alignment: Alignment.center,
                        child: Text(
                          youtubeHomePageData[index].videoTime!,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                youtubeHomePageData[index].acProfile!),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  youtubeHomePageData[index].subName!,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(youtubeHomePageData[index]
                                        .channelName!),
                                    Text(youtubeHomePageData[index].views!),
                                    Text(youtubeHomePageData[index]
                                        .durationTime!),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          const Icon(Icons.more_vert),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Row(
              children: [
                Icon(
                  Icons.local_play_outlined,
                  color: Colors.red,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Shorts',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: List.generate(
                    youtubeShortsHomeData.length,
                    (index) => Container(
                      height: 270,
                      width: 180,
                      margin: const EdgeInsets.only(top: 5, right: 15),
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage(youtubeShortsHomeData[index].url!),
                            fit: BoxFit.fill,
                          ),
                          color: const Color.fromARGB(255, 231, 223, 223),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 150),
                              child: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              youtubeShortsHomeData[index].subName!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              youtubeShortsHomeData[index].views!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
