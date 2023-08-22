import 'package:first_application/data_passing_ex/user_model.dart';
import 'package:flutter/material.dart';

class DataPassingTwo extends StatefulWidget {
  //final String data;
  //final List<String> data;
  //final Map<String, dynamic> data;
  final User data;
  const DataPassingTwo({super.key, required this.data});

  @override
  State<DataPassingTwo> createState() => _DataPassingTwoState();
}

class _DataPassingTwoState extends State<DataPassingTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
            '${widget.data.firstName} ${widget.data.middleName} ${widget.data.lastName}'),
      ),
    );
  }
}
