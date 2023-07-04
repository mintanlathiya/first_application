import 'package:flutter/material.dart';

class SingleTextFieldCrudDemo extends StatefulWidget {
  const SingleTextFieldCrudDemo({super.key});

  @override
  State<SingleTextFieldCrudDemo> createState() =>
      _SingleTextFieldCrudDemoState();
}

class _SingleTextFieldCrudDemoState extends State<SingleTextFieldCrudDemo> {
  final TextEditingController _txtUserNameEditingController =
      TextEditingController();
  @override
  void dispose() {
    _txtUserNameEditingController.dispose();
    super.dispose();
  }

  List<String> userData = [];

  bool isUpdate = false;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _txtUserNameEditingController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: isUpdate
                  ? () {
                      userData[selectedIndex] =
                          _txtUserNameEditingController.text;
                      isUpdate = false;
                      _txtUserNameEditingController.clear();
                      setState(() {});
                    }
                  : () {
                      userData.add(_txtUserNameEditingController.text);
                      _txtUserNameEditingController.clear();

                      setState(() {});
                    },
              child: Text(isUpdate ? 'Update' : 'submit',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            userData.isEmpty
                ? const Text('there is no data')
                : Expanded(
                    child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Dismissible(
                        onDismissed: (direction) {
                          userData.removeAt(index);
                          setState(() {});
                        },
                        key: UniqueKey(),
                        child: ListTile(
                          title: Text(
                            userData[index],
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Text(
                                userData[index].characters.first.toUpperCase()),
                          ),
                          trailing: TextButton(
                            onPressed: () {
                              userData.removeAt(index);
                              setState(() {});
                            },
                            child: const Text('delete'),
                          ),
                          onTap: () {
                            print(index);
                            isUpdate = true;
                            selectedIndex = index;

                            setState(() {});
                          },
                        ),
                      );
                    },
                    itemCount: userData.length,
                  ))
          ],
        ),
      ),
    );
  }
}
