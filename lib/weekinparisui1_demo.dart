import 'package:flutter/material.dart';

class WeekInParis extends StatelessWidget {
  const WeekInParis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 832,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/6.jpeg'),
                        fit: BoxFit.fill)),
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 50,
                margin: const EdgeInsets.only(
                  top: 120,
                  left: 15,
                ),
                padding: const EdgeInsets.all(10),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.chat,
                      color: Colors.white,
                    ),
                    Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    Text(
                      '579',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.schedule,
                      color: Colors.white,
                    ),
                    Text(
                      '18',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(25),
                margin: const EdgeInsets.only(top: 590, left: 30),
                height: 230,
                width: 550,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(179, 239, 232, 232),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Milla Jovovoch',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          'Milla Jovovich is on a Italian Model with impressive',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          'protfolioAnd was best model and ramp walk in',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          '2018 She is famousBecause of her different',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          'colors stylesw.',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 380),
                      child: Container(
                        height: 50,
                        width: 160,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(176, 186, 22, 10),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            )),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Follow',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.add_circle,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
