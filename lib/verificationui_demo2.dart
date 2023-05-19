import 'package:flutter/material.dart';

class VerificationUiDemo extends StatelessWidget {
  const VerificationUiDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back),
                Icon(Icons.settings),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                padding: const EdgeInsets.only(right: 80),
                alignment: Alignment.centerRight,
                height: 60,
                width: 500,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 183, 109, 196),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: const Text(
                  'Outcome',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 25, top: 20),
                alignment: Alignment.center,
                height: 50,
                width: 255,
                decoration: const BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: const Text(
                  'Income',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          const Text('Saved This Month'),
          const SizedBox(
            height: 18,
          ),
          const Text(
            '\$25,999.00',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Day'),
              Text('Week'),
              Text(
                'Month',
                style: TextStyle(color: Colors.purple),
              ),
              Text('Year'),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(25),
                height: 250,
                width: 550,
                decoration: const BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage('assets/images/8.jpeg'))),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('jan'),
              Text('Feb'),
              Text('Mar'),
              Text('Apr'),
              Text('May'),
              Text('jun'),
              Text('jul'),
            ],
          )
        ],
      ),
    );
  }
}
