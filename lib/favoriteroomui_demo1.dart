import 'package:flutter/material.dart';

class FavoriteRoom extends StatelessWidget {
  const FavoriteRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 500,
                  width: 650,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/1.jpeg'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(70))),
                ),
                const Padding(
                  padding: EdgeInsets.all(30),
                  child: Icon(
                    Icons.arrow_back,
                    size: 50,
                  ),
                ),
                Container(
                  height: 400,
                  width: 650,
                  padding: const EdgeInsets.all(30),
                  margin: const EdgeInsets.only(top: 470),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Choose Your Favourite room',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                          'Smart home with facilities of smart devices in '),
                      const Text('Each room with intelligent system.'),
                      Container(
                        height: 230,
                        width: 630,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 100,
                                  width: 120,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(181, 71, 56, 9),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  child: const Column(
                                    children: [
                                      Icon(
                                        Icons.bed_rounded,
                                        color: Colors.amberAccent,
                                        size: 80,
                                      ),
                                      Text('Living Room'),
                                    ],
                                  ),
                                ),
                                const Column(
                                  children: [
                                    Icon(
                                      Icons.face_sharp,
                                      color: Colors.amberAccent,
                                      size: 80,
                                    ),
                                    Text('Kids room'),
                                  ],
                                ),
                              ],
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.bathtub,
                                      color: Colors.amberAccent,
                                      size: 80,
                                    ),
                                    Text('Bathroom'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.cast_for_education,
                                      color: Colors.amberAccent,
                                      size: 80,
                                    ),
                                    Text('Study Room'),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
