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
                width: 620,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/6.jpeg'),
                        fit: BoxFit.fill)),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
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
                margin: const EdgeInsets.only(top: 500, left: 30),
                height: 230,
                width: 550,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(229, 215, 205, 205),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
              )
            ],
          )
        ],
      ),
    );
  }
}
