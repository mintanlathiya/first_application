import 'package:first_application/data_passing_ex/datapassing2.dart';
import 'package:first_application/data_passing_ex/user_model.dart';
import 'package:flutter/material.dart';

class DataPassingOne extends StatefulWidget {
  const DataPassingOne({super.key});

  @override
  State<DataPassingOne> createState() => _DataPassingOneState();
}

class _DataPassingOneState extends State<DataPassingOne> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController middleNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: firstNameController,
          ),
          const SizedBox(height: 5),
          TextField(
            controller: middleNameController,
          ),
          const SizedBox(height: 5),
          TextField(
            controller: lastNameController,
          ),
          const SizedBox(height: 5),
          ElevatedButton(
              onPressed: () {
                User obj = User(
                    firstName: firstNameController.text,
                    middleName: middleNameController.text,
                    lastName: lastNameController.text);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DataPassingTwo(
                        //data: firstNameController.text.toString(),
                        // data: [
                        //    firstNameController.text,
                        //    middleNameController.text,
                        //    lastNameController.text,
                        // ],
                        // data: {
                        //   'firstName': firstNameController.text,
                        //   'middleName': middleNameController.text,
                        //   'lastName': lastNameController.text,
                        // },
                        data: obj,
                      ),
                    ));
              },
              child: const Text('Submit'))
        ],
      ),
    );
  }
}
