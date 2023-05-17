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
            preferredSize: Size(double.infinity, 80),
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
          Container(
            height: 400,
            width: 500,
            color: Colors.blue,
          ),
          Container(
            height: 200,
            width: 600,
            color: Colors.pink,
          ),
          Container(
            height: 30,
            width: 70,
            color: Colors.blue,
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 50,
                  color: Colors.amber,
                ),
                const Text('off')
              ],
            ),
          ),
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
