import 'package:flutter/material.dart';

class StackDividerUiDemo extends StatelessWidget {
  const StackDividerUiDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Row(
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.red,
                        size: 50,
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.wallet,
                  color: Colors.white,
                  size: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 50,
                    width: 120,
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.account_circle,
                          color: Colors.white,
                          size: 40,
                        ),
                        Text(
                          'Biz',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 700,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )),
                //color: Colors.white,
                child: const Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.account_circle,
                          color: Colors.red,
                          size: 40,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Icon(
                          Icons.search,
                          size: 40,
                        ),
                        Text(
                          'Try Delhi Activities',
                          style: TextStyle(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Stack(
              
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 100,
                  width: 700,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      )),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.orange,
                              child: Icon(
                                Icons.airplanemode_active,
                                size: 40,
                              ),
                            )),
                        Text('Flights')
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.hotel,
                                size: 40,
                              ),
                            )),
                        Text('Hotels')
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.blue,
                              child: Icon(
                                Icons.train,
                                size: 40,
                              ),
                            )),
                        Text('Trains')
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.purple,
                              child: Icon(
                                Icons.holiday_village,
                                size: 40,
                              ),
                            )),
                        Text('Holidays')
                      ],
                    ),
                  ],
                )
              ],
            ),
            Container(
              height: 200,
              width: 600,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.car_rental,
                            color: Colors.blue,
                            size: 40,
                          ),
                          Text(
                            'Airpot cabs',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.self_improvement,
                            color: Colors.blue,
                            size: 40,
                          ),
                          Text(
                            'Self Drive',
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        // height: 80,
                        //width: 80,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue,
                              Colors.white,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: const Column(
                          children: [
                            Icon(
                              Icons.home,
                              color: Colors.red,
                              size: 40,
                            ),
                            Text(
                              'Home stays',
                            ),
                          ],
                        ),
                      ),
                      const Column(
                        children: [
                          Icon(
                            Icons.home_mini_outlined,
                            color: Colors.red,
                            size: 40,
                          ),
                          Text(
                            'NearBy Gateways ',
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.cabin,
                            color: Colors.orange,
                            size: 40,
                          ),
                          Text(
                            'Outstation Cabs ',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.airplane_ticket,
                            color: Colors.orange,
                            size: 40,
                          ),
                          Text(
                            'Self Drive ',
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.purple,
                            size: 40,
                          ),
                          Text(
                            'Tours ',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.book,
                            color: Colors.purple,
                            size: 40,
                          ),
                          Text(
                            'Visa services ',
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 50,
                width: 600,
                //color: Colors.white,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.event),
                      Text('Events & Festivals'),
                      VerticalDivider(
                        color: Colors.black,
                        indent: 5,
                        endIndent: 5,
                      ),
                      Icon(Icons.card_giftcard),
                      Text('Gift Card'),
                      VerticalDivider(
                        color: Colors.black,
                        indent: 5,
                        endIndent: 5,
                      ),
                      Icon(Icons.event),
                      Text('Offer'),
                      VerticalDivider(
                        color: Colors.black,
                        indent: 5,
                        endIndent: 5,
                      ),
                      Icon(Icons.train),
                      Text('Hydrabad'),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(13),
              child: Row(
                children: [
                  Text(
                    'Welcome Offer For You,Angle',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              // padding: const EdgeInsets.symmetric(vertical: 20),
              height: 200,
              width: 600,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://m.media-amazon.com/images/I/81rfhK8PomL._AC_UL600_FMwebp_QL65_.jpg'),
                      fit: BoxFit.contain),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                height: 50,
                width: 650,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10),
                  ),
                  color: Colors.black,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.group,
                          color: Colors.white,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.trip_origin,
                          color: Colors.white,
                        ),
                        Text(
                          'My Trips',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.local_offer,
                          color: Colors.white,
                        ),
                        Text(
                          'Offer',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                        Text(
                          'Trip Ideas',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.money,
                          color: Colors.white,
                        ),
                        Text(
                          'Trip Money',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
