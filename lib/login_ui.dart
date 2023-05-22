import 'package:flutter/material.dart';

class LoginDemo extends StatelessWidget {
  const LoginDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            height: 400,
            width: 600,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 219, 205, 205),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.short_text_outlined),
                      Icon(Icons.more_vert),
                    ],
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/6.jpeg'),
                  radius: 55,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Hira  Riaz',
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Ux/Ui Designer'),
                IntrinsicHeight(
                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text(
                                '\$8900',
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Income'),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          width: 10,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text(
                                '\$5500',
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Expenses'),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          width: 10,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text(
                                '\$890',
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Loon'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  'Overview ',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.notification_add_outlined),
                Spacer(),
                Text('Sep 13,2020'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 70,
            width: 600,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 232, 227, 227),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Row(
              children: [
                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 221, 184, 228),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: const Icon(Icons.arrow_upward),
                  ),
                  title: const Text(
                    'sent',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('sending payment to Clients'),
                  trailing: const Text(
                    '\$150',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
