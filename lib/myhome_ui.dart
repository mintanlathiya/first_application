import 'package:flutter/material.dart';

class MyHomeUi extends StatelessWidget {
  const MyHomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.arrow_back,
                color: Colors.brown,
              ),
              Icon(
                Icons.menu,
                color: Colors.brown,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50, bottom: 8),
            child: Text(
              'Dining Table',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Text(
            '2000k',
          ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 220,
                width: 75,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 147, 155, 215),
                        Color.fromARGB(255, 243, 238, 238),
                        Color.fromARGB(255, 226, 203, 173),
                        Colors.orange
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
              ),
              Container(
                margin: const EdgeInsets.only(top: 150, left: 3),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 186, 129),
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(50))),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 129, 205, 198),
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 90, 139, 179),
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 80, 69, 179),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 10,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.pink,
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('data'),
              Text(
                'data',
                style: TextStyle(
                  color: Color.fromARGB(255, 231, 186, 129),
                ),
              ),
              Text('data'),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 130, left: 3),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 5,
                  color: const Color.fromARGB(255, 231, 186, 129),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(50))),
            child: const Icon(
              Icons.power_settings_new_sharp,
              size: 40,
              color: Color.fromARGB(255, 231, 186, 129),
            ),
          ),
        ],
      ),
    );
  }
}
