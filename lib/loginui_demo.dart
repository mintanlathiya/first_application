import 'package:flutter/material.dart';

class LoginUiDemo extends StatelessWidget {
  const LoginUiDemo({super.key});

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
                Icon(Icons.arrow_back_ios),
                Icon(Icons.search),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Transactions',
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('See All'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 110,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Text(
                    'All',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 50,
                  width: 110,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(253, 239, 235, 235),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Text(
                    'Income',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 50,
                  width: 110,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(253, 239, 235, 235),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Text(
                    'Expense',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  'Today',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 75,
            decoration: BoxDecoration(
                border: Border.all(
                  style: BorderStyle.solid,
                  color: Colors.black,
                ),
                color: const Color.fromARGB(255, 232, 227, 227),
                borderRadius: const BorderRadius.all(Radius.circular(30))),
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.mail_outline,
                    size: 50,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payment',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('payment  from Andrea'),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '\$30.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.all(45),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.deepPurple,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(160))),
              ),
              Container(
                margin: const EdgeInsets.only(top: 82, left: 85),
                height: 220,
                width: 220,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 170, 193, 211),
                    borderRadius: BorderRadius.all(Radius.circular(140))),
              ),
              Container(
                margin: const EdgeInsets.only(top: 106, left: 110),
                height: 170,
                width: 170,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(140))),
              ),
              Container(
                margin: const EdgeInsets.only(top: 135, left: 140),
                padding: const EdgeInsets.all(8),
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/6.jpeg'),
                        fit: BoxFit.fill),
                    border: Border.all(
                      strokeAlign: 2,
                      width: 3,
                      color: Colors.black,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(140))),
              ),
              Container(
                margin: const EdgeInsets.only(top: 22, left: 160),
                padding: const EdgeInsets.all(8),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/3.jpeg'),
                        fit: BoxFit.fill),
                    border: Border.all(
                      strokeAlign: 2,
                      width: 3,
                      color: Colors.white,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(140))),
              ),
              Container(
                margin: const EdgeInsets.only(top: 125, left: 30),
                padding: const EdgeInsets.all(8),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/4.jpeg'),
                        fit: BoxFit.fill),
                    border: Border.all(
                      strokeAlign: 2,
                      width: 3,
                      color: Colors.white,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(140))),
              ),
              Container(
                margin: const EdgeInsets.only(top: 125, left: 310),
                padding: const EdgeInsets.all(8),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/5.jpeg'),
                        fit: BoxFit.fill),
                    border: Border.all(
                      strokeAlign: 2,
                      width: 3,
                      color: Colors.white,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(140))),
              ),
              Container(
                margin: const EdgeInsets.only(top: 265, left: 55),
                padding: const EdgeInsets.all(8),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/5.jpeg'),
                        fit: BoxFit.fill),
                    border: Border.all(
                      strokeAlign: 2,
                      width: 3,
                      color: Colors.white,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(140))),
              ),
              Container(
                margin: const EdgeInsets.only(top: 265, left: 278),
                padding: const EdgeInsets.all(8),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/4.jpeg'),
                        fit: BoxFit.fill),
                    border: Border.all(
                      strokeAlign: 2,
                      width: 3,
                      color: Colors.white,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(140))),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: const Text(
              'See Details',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
