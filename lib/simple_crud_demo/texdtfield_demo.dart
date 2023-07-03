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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.phone,
              enabled: true,
              cursorColor: Colors.green,
              cursorWidth: 5,
              cursorHeight: 30,
              controller: _txtEditingController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  // borderSide: BorderSide.none,
                ),
                focusColor: Colors.red,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _txtMiddleEditingController,
              decoration: const InputDecoration(
                // hintText: 'middle Name',
                //helperText: 'character',
                //label: Text('label'),
                //fillColor: Colors.amber,
                //filled: true,
                //suffix: const Icon(Icons.add),
                // suffixIcon: Icon(Icons.message),
                // suffixText: 'suffix text',
                // icon: Icon(Icons.message),
                // iconColor: Colors.amber,
                // prefix: Text('prefix'),
                // prefixIcon: Icon(Icons.message_outlined),
                // prefixIconColor: Colors.red,

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _txtLastEditingController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.red)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.purple)),
              ),
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
      ),
    );
  }
}
