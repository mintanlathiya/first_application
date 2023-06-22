import 'package:first_application/statefullexample/counter.controller.dart';
import 'package:flutter/material.dart';

class CheckBoxMcqDemo extends StatefulWidget {
  const CheckBoxMcqDemo({super.key});

  @override
  State<CheckBoxMcqDemo> createState() => _CheckBoxMcqDemoState();
}

class _CheckBoxMcqDemoState extends State<CheckBoxMcqDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('hobby: '),
          Expanded(
            child: ListView.builder(
              itemCount: HobbyCheckBox.hobbyData.length,
              itemBuilder: (context, index) => Row(
                children: [
                  Checkbox(
                    value: HobbyCheckBox.hobbyData[index]['isSelected'],
                    onChanged: (value) {
                      HobbyCheckBox.hobbyData[index]['isSelected'] = value!;
                      setState(() {});
                    },
                  ),
                  Text(HobbyCheckBox.hobbyData[index]['hobbyName'])
                ],
              ),
            ),
          ),
          MaterialButton(
            height: 80,
            minWidth: 150,
            color: Colors.blue,
            shape: const BeveledRectangleBorder(
                side: BorderSide(),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            onPressed: () {
              HobbyCheckBox.hobbyMehod();
              HobbyCheckBox.clearMethod();

              HobbyCheckBox.isSubmitted = !HobbyCheckBox.isSubmitted;
              setState(() {});
            },
            child: const Text(
              'Submit',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: HobbyCheckBox.isSubmitted
                ? Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.all(20),
                    height: 50,
                    width: 600,
                    color: Colors.transparent,
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Text(
                          'Hobby is ${HobbyCheckBox.selectHobbiesList}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        );
                      },
                    ),
                  )
                : const SizedBox(),
          )
        ],
      ),
    );
  }
}
