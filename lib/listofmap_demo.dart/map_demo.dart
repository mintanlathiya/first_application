import 'package:flutter/material.dart';

class MapDemo extends StatelessWidget {
  final Map<String, dynamic> myDetails = {
    'name': 'mintan',
    'age': 25,
    'mobileno': 7575830739,
    'emailid': 'lathiyamintan@gmail.com',
    'address': 'surat',
  };
  MapDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(myDetails['name']),
          Text(myDetails['age'].toString()),
          Text(myDetails['mobileno'].toString()),
          Text(myDetails['emailid']),
          Text(myDetails['address']),
        ],
      ),
    );
  }
}
