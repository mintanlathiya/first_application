import 'package:first_application/youtube_bottomnavigation_demo.dart/youtube_rowdata.dart';
import 'package:flutter/material.dart';

class LibraryNavigation extends StatefulWidget {
  const LibraryNavigation({super.key});

  @override
  State<LibraryNavigation> createState() => _LibraryNavigationState();
}

class _LibraryNavigationState extends State<LibraryNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                                    backgroundImage:
                                        AssetImage('assets/images/35.jpeg'),
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
                            ...List.generate(youtubeEnddrawerData.length,
                                (index) {
                              if (youtubeEnddrawerData[index].icon == null) {
                                return const Divider(
                                  thickness: 3,
                                );
                              } else {
                                return ListTile(
                                  leading:
                                      Icon(youtubeEnddrawerData[index].icon!),
                                  title: Text(
                                      youtubeEnddrawerData[index].iconName!),
                                );
                              }
                            }),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Privacy policy .Terms of Service'),
                              ],
                            ),
                          ]),
                    ),
                  ),
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
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.history),
                Text(
                  'History',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Spacer(),
                Text(
                  'View all',
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                  ),
                )
              ],
            ),
          ),
          const Divider(thickness: 2),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.playlist_play_outlined),
                Text(
                  'Playlists',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Spacer(),
                Text(
                  'View all',
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 120,
                        width: 180,
                        margin: const EdgeInsets.only(left: 20, bottom: 5),
                        decoration: const BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            image: DecorationImage(
                              image: AssetImage('assets/images/23.jpeg'),
                            )),
                      ),
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                          height: 120,
                          width: 180,
                          margin: const EdgeInsets.only(left: 20, bottom: 5),
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.thumb_up,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '13',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Liked videos'),
                            Text('private'),
                          ],
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Icon(Icons.more_vert),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 120,
                        width: 180,
                        margin: const EdgeInsets.only(left: 20, bottom: 5),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/25.jpeg'),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                          height: 120,
                          width: 180,
                          margin: const EdgeInsets.only(left: 20, bottom: 5),
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.watch_later_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Watch later'),
                            Text('private'),
                          ],
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Icon(Icons.more_vert),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 50,
              ),
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.black26,
                      child: Icon(Icons.add),
                    ),
                  ),
                  Text('New Playlist')
                ],
              )
            ],
          ),
          const Divider(thickness: 2),
          const ListTile(
            leading: Icon(Icons.ondemand_video),
            title: Text('Your videos'),
          ),
          const ListTile(
            leading: Icon(Icons.download),
            title: Text('Downloads'),
            subtitle: Text('20 recommendations'),
          ),
          const ListTile(
            leading: Icon(Icons.movie),
            title: Text('Your movies'),
          ),
          const Divider(thickness: 2),
        ],
      ),
    );
  }
}
