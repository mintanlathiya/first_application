import 'package:first_application/youtube_bottomnavigation_demo.dart/youtube_rowdata.dart';
import 'package:first_application/youtube_bottomnavigation_demo.dart/youtubeuser_modal_demo.dart';
import 'package:flutter/material.dart';

class ShortsNavigation extends StatefulWidget {
  const ShortsNavigation({super.key});

  @override
  State<ShortsNavigation> createState() => _ShortsNavigationState();
}

class _ShortsNavigationState extends State<ShortsNavigation> {
  @override
  Widget build(BuildContext context) {
    for (var element in shortsReelList) {
      shortData.add(Shorts.fromJson(element));
    }
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: shortData.length,
        itemBuilder: (context, index) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Image(
                image: AssetImage(shortData[index].url!),
                fit: BoxFit.fill,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 40,
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 200),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          shortData[index].acprofile!),
                                    ),
                                  ),
                                  Text(
                                    shortData[index].name!,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 8),
                                    height: 30,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    color: Colors.red,
                                    child: const Text(
                                      'Subscribe',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              shortData[index].contain!,
                              style: const TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 400,
                        width: 80,
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            const Icon(
                              Icons.thumb_up,
                              color: Colors.white,
                              size: 40,
                            ),
                            const Text(
                              '790K',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Icon(
                              Icons.thumb_down,
                              color: Colors.white,
                              size: 40,
                            ),
                            const Text(
                              'Dislike',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Icon(
                              Icons.comment,
                              color: Colors.white,
                              size: 40,
                            ),
                            const Text(
                              '628',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 40,
                            ),
                            const Text(
                              'Share',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Icon(
                              Icons.shape_line_rounded,
                              color: Colors.white,
                              size: 40,
                            ),
                            const Text(
                              'Remix',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                image: DecorationImage(
                                  image: AssetImage(
                                    shortData[index].url!,
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
