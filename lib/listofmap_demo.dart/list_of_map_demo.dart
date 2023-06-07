import 'package:flutter/material.dart';

class ListOfMap extends StatelessWidget {
  final List<Map> myDetails = [
    {
      'name': 'mintan',
      'age': 25,
      'stream': 'art',
      'emailid': 'lathiyamintan@gmail.com',
    },
    {
      'name': 'vishal',
      'age': 27,
      'stream': 'art',
      'emailid': 'vishal@gmail.com',
    },
    {
      'name': 'hardik',
      'age': 26,
      'stream': 'art',
      'emailid': 'hardik@gmail.com',
    },
    {
      'name': 'ansh',
      'age': 22,
      'stream': 'science',
      'emailid': 'ansh@gmail.com',
    },
    {
      'name': 'viraj',
      'age': 20,
      'stream': 'commerce',
      'emailid': 'viraj@gmail.com',
    },
  ];

  ListOfMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(
          myDetails.length,
          (index) => ListTile(
            leading: CircleAvatar(
              child: Text(
                myDetails[index]['age'].toString(),
              ),
            ),
            title: Text(myDetails[index]['name']),
            subtitle: Text(myDetails[index]['emailid']),
            trailing: Text(myDetails[index]['stream']),
          ),
        ),
      ),
    );
  }
}
