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
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 232, 227, 227),
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
                              Text('Loan'),
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
          SizedBox(
            height: 270,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 70,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 232, 227, 227),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 221, 184, 228),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: const Icon(Icons.arrow_upward),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'sent',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('sending payment to Clients'),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            '\$150',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 70,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 232, 227, 227),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 221, 184, 228),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: const Icon(Icons.arrow_downward),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Receive',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('Receiving salary from company'),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            '\$250',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 70,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 232, 227, 227),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 221, 184, 228),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: const Icon(Icons.local_atm_rounded),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Loan',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('Loan for the car'),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            '\$400',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 70,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 232, 227, 227),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 221, 184, 228),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: const Icon(Icons.arrow_upward),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'sent',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('sending payment to Clients'),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            '\$150',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 70,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 232, 227, 227),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 221, 184, 228),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: const Icon(Icons.arrow_downward),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Receive',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('Receiving salary from company'),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            '\$250',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.home,
            size: 40,
          ),
          Icon(
            Icons.wallet,
            size: 40,
          ),
          Icon(
            Icons.add_box,
            size: 40,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.monetization_on_outlined,
            size: 40,
          ),
          Icon(
            Icons.person_pin,
            size: 40,
          ),
        ],
      ),
    );
  }
}
