import 'package:flutter/material.dart';

class SingleTextFieldAlertDialogDemo extends StatefulWidget {
  const SingleTextFieldAlertDialogDemo({super.key});

  @override
  State<SingleTextFieldAlertDialogDemo> createState() =>
      _SingleTextFieldAlertDialogDemoState();
}

class _SingleTextFieldAlertDialogDemoState
    extends State<SingleTextFieldAlertDialogDemo> {
  final TextEditingController _txtUserNameEditingController =
      TextEditingController();
  final TextEditingController _txtUpdateUserNameEditingController =
      TextEditingController();
  @override
  void dispose() {
    _txtUserNameEditingController.dispose();
    _txtUpdateUserNameEditingController.dispose();
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
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('delete dialog'),
                                  actions: [
                                    MaterialButton(
                                      onPressed: () {
                                        userData.removeAt(index);
                                        Navigator.pop(context);

                                        setState(() {});
                                      },
                                      child: const Text('delete'),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.pop(context);

                                        setState(() {});
                                      },
                                      child: const Text('cancle'),
                                    ),
                                  ],
                                );
                              },
                            );

                            setState(() {});
                          },
                          key: UniqueKey(),
                          child: ListTile(
                            title: Text(
                              userData[index],
                            ),
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue,
                              child: Text(userData[index]
                                  .characters
                                  .first
                                  .toUpperCase()),
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
                              _txtUpdateUserNameEditingController.text =
                                  userData[selectedIndex];

                              showDialog(
                                context: context,
                                builder: (context) => SimpleDialog(
                                  title: const Text('update dialog'),
                                  children: [
                                    TextField(
                                      controller:
                                          _txtUpdateUserNameEditingController,
                                    ),
                                    Row(
                                      children: [
                                        MaterialButton(
                                          onPressed: () {
                                            userData[selectedIndex] =
                                                _txtUpdateUserNameEditingController
                                                    .text;
                                            isUpdate = false;
                                            _txtUpdateUserNameEditingController
                                                .clear();

                                            Navigator.pop(context);

                                            setState(() {});
                                          },
                                          child: const Text('update'),
                                        ),
                                        MaterialButton(
                                          onPressed: () {
                                            Navigator.pop(context);

                                            setState(() {});
                                          },
                                          child: const Text('cancle'),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              );

                              setState(() {});
                            },
                          ),
                        );
                      },
                      itemCount: userData.length,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
