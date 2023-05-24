import 'package:flutter/material.dart';

class FavoriteRoom1 extends StatelessWidget {
  const FavoriteRoom1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.sort,
          color: Colors.black,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.info_outline_rounded,
              color: Colors.black,
            ),
          )
        ],
        bottom: const PreferredSize(
            preferredSize: Size(double.infinity, 75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.coronavirus_outlined,
                  size: 40,
                ),
                Icon(
                  Icons.emoji_objects_outlined,
                  size: 40,
                ),
                Icon(
                  Icons.park,
                  size: 40,
                ),
                Icon(
                  Icons.live_tv,
                  size: 40,
                ),
                Icon(
                  Icons.highlight,
                  size: 40,
                ),
              ],
            )),
      ),
      body: Column(
        children: [
          const Stack(
            children: [
              Divider(
                color: Colors.brown,
                thickness: 2,
                indent: 70,
                endIndent: 70,
              ),
              Divider(
                color: Colors.brown,
                thickness: 5,
                indent: 70,
                endIndent: 490,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 130),
                  child: Icon(Icons.add),
                ),
                Stack(
                  children: [
                    Container(
                      height: 280,
                      width: 280,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 193, 193, 100),
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(240)),
                      ),
                    ),
                    Positioned(
                      top: 28,
                      left: 30,
                      child: Container(
                        height: 220,
                        width: 220,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 176, 176, 67),
                          borderRadius: BorderRadius.all(Radius.circular(240)),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 42,
                      child: Container(
                        height: 195,
                        width: 195,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(251, 59, 58, 58),
                          borderRadius: BorderRadius.all(Radius.circular(240)),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 65,
                      left: 68,
                      child: Container(
                        height: 140,
                        width: 140,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(250, 45, 42, 42),
                          borderRadius: BorderRadius.all(Radius.circular(240)),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 85,
                      left: 88,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(240)),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '16°',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 35,
                              ),
                            ),
                            Text(
                              'c',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Icon(Icons.minimize),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Speed'),
            ],
          ),
          const Stack(
            children: [
              Divider(
                color: Colors.brown,
                thickness: 2,
                indent: 70,
                endIndent: 70,
              ),
              Divider(
                color: Colors.brown,
                thickness: 5,
                indent: 70,
                endIndent: 300,
              ),
              Padding(
                padding: EdgeInsets.only(left: 315),
                child: CircleAvatar(
                  backgroundColor: Colors.brown,
                  radius: 8,
                ),
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Low'),
              Text('Mid'),
              Text('High'),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 20, top: 4),
                height: 45,
                width: 140,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 184, 195, 206),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                alignment: Alignment.centerRight,
                child: const Text(
                  'OFF',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Container(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  height: 40,
                  width: 80,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 131, 78, 60),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Text(
                    'ON',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.home,
              size: 40,
            ),
            Icon(
              Icons.account_balance_wallet_outlined,
              size: 40,
            ),
            Icon(
              Icons.contact_support_outlined,
              size: 40,
            ),
            Icon(
              Icons.person,
              size: 40,
            ),
          ],
        ),
      ),
    );
  }
}
