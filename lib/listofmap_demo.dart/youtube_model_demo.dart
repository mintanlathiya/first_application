import 'package:first_application/listofmap_demo.dart/row_data.dart';
import 'package:first_application/listofmap_demo.dart/uesr_model.dart';
import 'package:flutter/material.dart';

class YoutubeModelDemo extends StatelessWidget {
  const YoutubeModelDemo({super.key});

  @override
  Widget build(BuildContext context) {
    for (var element in youtubeDetail) {
      youtubeData.add(YoutubeBottomSheet.fromJson(element));
    }
    for (var element in youtubeenddrawerDetail) {
      youtubeenddrawerData.add(YoutubeendDrawerBottomSheet.fromJson(element));
    }
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 226, 226),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.queue_play_next,
          size: 40,
          color: Colors.red,
        ),
        title: const Text(
          'YouTube',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.live_tv,
              size: 40,
              color: Colors.black,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
              size: 40,
              color: Colors.black,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              size: 40,
              color: Colors.black,
            ),
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
                            const Icon(
                              Icons.cancel_outlined,
                              size: 35,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/3.jpeg'),
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
                            ...List.generate(youtubeenddrawerData.length,
                                (index) {
                              if (youtubeenddrawerData[index].icon == null) {
                                return const Divider(
                                  thickness: 3,
                                );
                              } else {
                                return ListTile(
                                  leading:
                                      Icon(youtubeenddrawerData[index].icon!),
                                  title: Text(
                                      youtubeenddrawerData[index].iconName!),
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
                    )),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/3.jpeg'),
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 80),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(right: 15),
                        height: 40,
                        width: 55,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 219, 212, 212),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Icon(Icons.compass_calibration_outlined),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(right: 15),
                        height: 40,
                        width: 55,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Colors.black54,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: const Text(
                          'All',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 15),
                      height: 40,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 219, 212, 212),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Text('New to you'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 15),
                      height: 40,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 219, 212, 212),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Text('Sharks'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 15),
                      height: 40,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 219, 212, 212),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Text('Tarak Mehta'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 15),
                      height: 40,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 219, 212, 212),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Text(' live'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 15),
                      height: 40,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 219, 212, 212),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Text('Flutter'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 15),
                      height: 40,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 219, 212, 212),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Text('Computer'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 15),
                      height: 40,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 219, 212, 212),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Text('Cricket'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 15),
                      height: 40,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 219, 212, 212),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Text(' Cars'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 15),
                      height: 40,
                      width: 150,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 219, 212, 212),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Text(' Recently uploaded'),
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
            )),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10),
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
                  margin: const EdgeInsets.all(20),
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
              Container(
                height: 200,
                width: 800,
                padding: const EdgeInsets.all(8),
                alignment: Alignment.bottomRight,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/26.jpeg'),
                        fit: BoxFit.fill)),
                child: Container(
                  height: 20,
                  width: 50,
                  color: Colors.black,
                  alignment: Alignment.center,
                  child: const Text(
                    '9:09',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/26.jpeg'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Is  this  most  beautiful  building  in  the',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'world? - Stephanie  Honchell  Smith',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'TED_Ed - 506K views - 6 months ago',
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                height: 200,
                width: 800,
                alignment: Alignment.bottomRight,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/21.jpeg'),
                        fit: BoxFit.fill)),
                child: Container(
                  height: 20,
                  width: 50,
                  color: Colors.black,
                  alignment: Alignment.center,
                  child: const Text(
                    '8:05',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/21.jpeg'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'EIFFEL  TOWER  AT  NIGHT, Paris  France',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '(Eiffel  Tower  sparkling  &  twinkling  at  ni...',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Jean_ Luc Ichard - 1.1M views - 5 years ago',
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.more_vert),
                  ],
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
                child: Row(
                  children: [
                    Container(
                      height: 270,
                      width: 180,
                      margin: const EdgeInsets.only(top: 5, right: 15),
                      alignment: Alignment.bottomCenter,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/21.jpeg'),
                            fit: BoxFit.fill,
                          ),
                          color: Color.fromARGB(255, 231, 223, 223),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 150),
                              child: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Eiffel Tower',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'sparkling⭐',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '65k views',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 270,
                      width: 180,
                      margin: const EdgeInsets.only(top: 5, right: 15),
                      alignment: Alignment.bottomCenter,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/22.jpeg'),
                            fit: BoxFit.fill,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 150),
                              child: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Rome tour',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Italy 2023',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '6.5M views',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 270,
                      width: 180,
                      margin: const EdgeInsets.only(top: 5, right: 15),
                      alignment: Alignment.bottomCenter,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/23.jpeg'),
                            fit: BoxFit.fill,
                          ),
                          color: Color.fromARGB(255, 231, 223, 223),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 150),
                              child: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Spain Travel',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Best Place',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '45k views',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 270,
                      width: 180,
                      margin: const EdgeInsets.only(top: 5, right: 15),
                      alignment: Alignment.bottomCenter,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/24.jpeg'),
                            fit: BoxFit.fill,
                          ),
                          color: Color.fromARGB(255, 231, 223, 223),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 150),
                              child: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Holiday in Bali',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'visit in Bali',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '779k views',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 270,
                      width: 180,
                      margin: const EdgeInsets.only(top: 5, right: 15),
                      alignment: Alignment.bottomCenter,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/25.jpeg'),
                            fit: BoxFit.fill,
                          ),
                          color: Color.fromARGB(255, 231, 223, 223),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 150),
                              child: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '5 place to visit',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'in Spain 2021',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '51k views',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(5),
        height: 70,
        width: 600,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Column(
              children: [
                Icon(
                  Icons.home,
                  size: 35,
                ),
                Text('Home'),
              ],
            ),
            const Column(
              children: [
                Icon(
                  Icons.shop_rounded,
                  size: 35,
                ),
                Text('Short'),
              ],
            ),
            IconButton(
              color: Colors.red,
              iconSize: 50,
              onPressed: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) => Container(
                          padding: const EdgeInsets.all(20),
                          height: 400,
                          width: 620,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(30))),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Row(
                                  children: [
                                    Text(
                                      'Create',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.cancel_outlined,
                                      size: 30,
                                    ),
                                  ],
                                ),
                                ...List.generate(
                                  youtubeData.length,
                                  (index) => ListTile(
                                      leading: CircleAvatar(
                                        backgroundColor: Colors.red,
                                        radius: 30,
                                        child: Icon(youtubeData[index].icon!),
                                      ),
                                      title:
                                          Text(youtubeData[index].iconName!)),
                                ),
                              ]),
                        ));
              },
              icon: const Icon(
                Icons.add_circle_outline,
              ),
            ),
            const Column(
              children: [
                Icon(
                  Icons.subscriptions,
                  size: 35,
                ),
                Text('Subscriptions'),
              ],
            ),
            const Column(
              children: [
                Icon(
                  Icons.library_add,
                  size: 35,
                ),
                Text('Library'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
