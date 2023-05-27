import 'package:flutter/material.dart';

class FindDoctorUi extends StatelessWidget {
  const FindDoctorUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 600,
                width: 620,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/29.jpeg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 480),
                height: 350,
                width: 620,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Find your',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Perfect Doctor',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  'From our smart app you can find doctor nearby'),
                              Text(
                                  'Your area we have list of nearby Hospitals,you'),
                              Text(
                                  'can find highly Qualified and top rated doctors.'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.all(50),
                      height: 70,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
