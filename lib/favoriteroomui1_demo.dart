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
        elevation: 2,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 400,
              width: 650,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(246, 248, 248, 248),
                  image: DecorationImage(
                    image: AssetImage('assets/images/2.jpeg'),
                  )),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [Text('Speed')],
              ),
            ],
          ),
          const Divider(
            color: Colors.brown,
            thickness: 5,
            indent: 70,
            endIndent: 70,
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
