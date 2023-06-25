import 'package:first_application/listofmap_demo.dart/row_data.dart';
import 'package:flutter/material.dart';

class TabBarInstaDemo extends StatefulWidget {
  const TabBarInstaDemo({super.key});

  @override
  State<TabBarInstaDemo> createState() => _TabBarInstaDemoState();
}

class _TabBarInstaDemoState extends State<TabBarInstaDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(Icons.lock_outline),
                  Text(
                    'mintan_lathiya',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.arrow_drop_down),
                  Icon(Icons.add_box_outlined),
                  Icon(Icons.menu_outlined)
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/21.jpeg',
                          ),
                          radius: 45,
                        ),
                        Text(
                          'Mintan Lathiya',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('19-09-1998'),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '5',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Posts'),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '259',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Followers'),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '241',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Following'),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 200,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(31, 72, 33, 33),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Text(
                      'Edit  Profile',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(31, 72, 33, 33),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Text(
                      'Share  Profile',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(31, 72, 33, 33),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Icon(Icons.person_add_outlined)),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Story highlights',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('keep your favorite stories on your profile'),
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_up),
                  ],
                ),
              ),
              const TabBar(
                indicatorColor: Colors.black,
                tabs: [
                  Icon(
                    Icons.grid_on_outlined,
                    size: 40,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.person_pin_outlined,
                    color: Colors.black,
                    size: 40,
                  )
                ],
              ),
              // const TabBarView(
              //   children: [
              //     GridUrl(),
              //     PersonPinimages(),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class GridUrl extends StatefulWidget {
  const GridUrl({super.key});

  @override
  State<GridUrl> createState() => _GridUrlState();
}

class _GridUrlState extends State<GridUrl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: GridView.builder(
            itemCount: instagramProfilePageImageList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 3,
              crossAxisSpacing: 3,
            ),
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage(instagramProfilePageImageList[index]['url']),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}

class PersonPinimages extends StatefulWidget {
  const PersonPinimages({super.key});

  @override
  State<PersonPinimages> createState() => _PersonPinimagesState();
}

class _PersonPinimagesState extends State<PersonPinimages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: GridView.builder(
            itemCount: instagramProfilePageImageList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 3,
              crossAxisSpacing: 3,
            ),
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage(instagramProfilePageImageList[index]['url1']),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
