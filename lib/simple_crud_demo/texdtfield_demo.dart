import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final TextEditingController _txtEditingController = TextEditingController();
  final TextEditingController _txtMiddleEditingController =
      TextEditingController();
  final TextEditingController _txtLastEditingController =
      TextEditingController();

  String? myName, myMiddleName, myLastName;
  @override
  void dispose() {
    _txtEditingController.dispose();
    _txtMiddleEditingController.dispose();
    _txtLastEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: _txtEditingController,
          ),
          TextField(
            controller: _txtMiddleEditingController,
          ),
          TextField(
            controller: _txtLastEditingController,
          ),
          MaterialButton(
            onPressed: () {
              myName = _txtEditingController.text;
              myMiddleName = _txtMiddleEditingController.text;
              myLastName = _txtLastEditingController.text;
              setState(() {});
            },
            child: const Text('submit'),
          ),
          if (myName != null &&
              myMiddleName != null &&
              myLastName != null &&
              myName != '' &&
              myLastName != '' &&
              myMiddleName != '')
            Text("${myName!}  ${myMiddleName!} ${myLastName!}"),
        ],
      ),
    );
  }
}
