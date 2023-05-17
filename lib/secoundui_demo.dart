import 'package:flutter/material.dart';

class ExpandedsingleChild extends StatelessWidget {
  const ExpandedsingleChild({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'mintan',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'mitul',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'jemish',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'pravin',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'raj',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'ravina',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'raj',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'kappu',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'jemish',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'jatin',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'hinal',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Icon(
                    Icons.group,
                    size: 50,
                  ),
                  Text(
                    'hinal',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Icon(
                    Icons.group,
                    size: 50,
                  ),
                  Text(
                    'vishal',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Icon(
                    Icons.group,
                    size: 50,
                  ),
                  Text(
                    'hardik',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.group,
                    size: 50,
                  ),
                  Text(
                    'hinal',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Icon(
                    Icons.group,
                    size: 50,
                  ),
                  Text(
                    'vishal',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Icon(
                    Icons.group,
                    size: 50,
                  ),
                  Text(
                    'hardik',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              //padding: const EdgeInsets.only(left: 20),
              //physics: const ScrollPhysics(),

              primary: true,
              //reverse: true,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'mintan',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'mitul',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'jemish',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'mintan',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'raj',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'ravina',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'raj',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'kappu',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'jemish',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'jatin',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.group,
                        size: 50,
                      ),
                      Text(
                        'hinal',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Icon(
                    Icons.group,
                    size: 50,
                  ),
                  Text(
                    'ansh',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Icon(
                    Icons.group,
                    size: 50,
                  ),
                  Text(
                    'vishal',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Icon(
                    Icons.group,
                    size: 50,
                  ),
                  Text(
                    'viraj',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.group,
                    size: 50,
                  ),
                  Text(
                    'hinal',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Icon(
                    Icons.group,
                    size: 50,
                  ),
                  Text(
                    'jay',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Icon(
                    Icons.group,
                    size: 50,
                  ),
                  Text(
                    'ravi',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
