import 'package:flutter/material.dart';

class SingleTextFieldAlertDialogDemo extends StatefulWidget {
  const SingleTextFieldAlertDialogDemo({super.key});

  @override
  State<SingleTextFieldAlertDialogDemo> createState() =>
      _SingleTextFieldAlertDialogDemoState();
}

class _SingleTextFieldAlertDialogDemoState
    extends State<SingleTextFieldAlertDialogDemo> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  final TextEditingController _txtUserNameEditingController =
      TextEditingController();
  final TextEditingController _txtUpdateUserNameEditingController =
      TextEditingController();
  final TextEditingController _txtPasswordEditingController =
      TextEditingController();
  final TextEditingController _txtUpdatePasswordEditingController =
      TextEditingController();
  final TextEditingController _txtAgeEditingController =
      TextEditingController();
  final TextEditingController _txtUpdateAgeEditingController =
      TextEditingController();
  final TextEditingController _txtUrlEditingController =
      TextEditingController();
  @override
  void dispose() {
    _txtUserNameEditingController.dispose();
    _txtUpdateUserNameEditingController.dispose();
    _txtPasswordEditingController.dispose();
    _txtUpdatePasswordEditingController.dispose();
    _txtAgeEditingController.dispose();
    _txtUrlEditingController.dispose();
    _txtUpdateAgeEditingController.dispose();
    super.dispose();
  }

  List<Map<String, dynamic>> userData = [];
  bool isVisible = true;
  bool isUpdate = false;
  int selectedIndex = 0;
  String gender = 'gender', male = 'male', feMale = 'feMale';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _txtUserNameEditingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: 'UserName',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _txtPasswordEditingController,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    hintText: 'password',
                    suffix: GestureDetector(
                        onTap: () {
                          isVisible = !isVisible;
                          setState(() {});
                        },
                        child: Icon(isVisible
                            ? Icons.visibility_off
                            : Icons.visibility))),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'enter password';
                  } else if (value.length <= 10) {
                    return 'Strong password';
                  } else {
                    return null;
                  }
                },
                obscureText: isVisible,
                obscuringCharacter: '*',
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _txtAgeEditingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: 'age',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _txtUrlEditingController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: 'url',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text('Gender :  '),
                  Radio(
                    value: male,
                    groupValue: gender,
                    onChanged: (value) {
                      gender = value!;
                      setState(() {});
                    },
                  ),
                  const Text('male'),
                  Radio(
                    value: feMale,
                    groupValue: gender,
                    onChanged: (value) {
                      gender = value!;
                      setState(() {});
                    },
                  ),
                  const Text('feMale'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: isUpdate
                    ? () {
                        userData[selectedIndex]['userName'] =
                            _txtUserNameEditingController.text;
                        userData[selectedIndex]['password'] =
                            _txtPasswordEditingController.text;
                        userData[selectedIndex]['age'] =
                            _txtAgeEditingController.text;
                        userData[selectedIndex]['url'] =
                            _txtUrlEditingController.text;
                        userData[selectedIndex]['gender'] = gender;

                        isUpdate = false;
                        clearController();
                        setState(() {});
                      }
                    : () {
                        if (_formKey.currentState!.validate()) {
                          userData.add({
                            'userName': _txtUserNameEditingController.text,
                            'password': _txtPasswordEditingController.text,
                            'age': _txtAgeEditingController.text,
                            'url': _txtUrlEditingController.text,
                            'gender': gender,
                          });

                          clearController();
                        }

                        setState(() {});
                      },
                child: Text(isUpdate ? 'update' : 'submit',
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
                            child: GestureDetector(
                              onTap: () async {
                                print(index);
                                isUpdate = true;
                                selectedIndex = index;
                                _txtUpdateUserNameEditingController.text =
                                    userData[selectedIndex]['userName'];
                                _txtUpdatePasswordEditingController.text =
                                    userData[selectedIndex]['password'];
                                _txtUpdateAgeEditingController.text =
                                    userData[selectedIndex]['age'];
                                gender = userData[selectedIndex]['gender'];

                                await showDialog(
                                  context: context,
                                  builder: (context) => StatefulBuilder(
                                    builder: (context, setState) {
                                      return SimpleDialog(
                                        title: const Text('update dialog'),
                                        children: [
                                          Form(
                                            key: _formKey1,
                                            child: Column(
                                              children: [
                                                TextFormField(
                                                  controller:
                                                      _txtUpdateUserNameEditingController,
                                                ),
                                                TextFormField(
                                                  controller:
                                                      _txtUpdatePasswordEditingController,
                                                  validator: (value) {
                                                    if (value!.isEmpty) {
                                                      return 'enter password';
                                                    } else if (value.length <=
                                                        10) {
                                                      return 'Strong password';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
                                                  obscureText: true,
                                                  obscuringCharacter: '*',
                                                ),
                                                TextFormField(
                                                  controller:
                                                      _txtUpdateAgeEditingController,
                                                ),
                                                Row(
                                                  children: [
                                                    const Text('Gender :  '),
                                                    Radio(
                                                      value: male,
                                                      groupValue: gender,
                                                      onChanged: (value) {
                                                        gender = value!;
                                                        setState(() {});
                                                      },
                                                    ),
                                                    const Text('male'),
                                                    Radio(
                                                      value: feMale,
                                                      groupValue: gender,
                                                      onChanged: (value) {
                                                        gender = value!;
                                                        setState(() {});
                                                      },
                                                    ),
                                                    const Text('feMale'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              MaterialButton(
                                                onPressed: () {
                                                  if (_formKey1.currentState!
                                                      .validate()) 
                                                      {
                                                    userData[selectedIndex]
                                                            ['userName'] =
                                                        _txtUpdateUserNameEditingController
                                                            .text;
                                                    userData[selectedIndex]
                                                            ['password'] =
                                                        _txtUpdatePasswordEditingController
                                                            .text;
                                                    userData[selectedIndex]
                                                            ['age'] =
                                                        _txtUpdateAgeEditingController
                                                            .text;
                                                    userData[selectedIndex]
                                                        ['gender'] = gender;
                                                    isUpdate = false;
                                                    _txtUpdateUserNameEditingController
                                                        .clear();
                                                    _txtUpdatePasswordEditingController
                                                        .clear();
                                                    _txtUpdateAgeEditingController
                                                        .clear();
                                                    gender = 'gender';
                                                    Navigator.pop(context);
                                                  }

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
                                      );
                                    },
                                  ),
                                );
                                // ).then((value) => setState(() {}));

                                setState(() {});
                              },
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          userData[index]['url'],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'UserName : ${userData[index]['userName']}',
                                      ),
                                      Text(
                                        'password : ${userData[index]['password']}',
                                      ),
                                      Text(
                                        'Age : ${userData[index]['age'].toString()}',
                                      ),
                                      Text(
                                        'Gender : ${userData[index]['gender']}',
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: userData.length,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  void clearController() {
    _txtUserNameEditingController.clear();
    _txtPasswordEditingController.clear();
    _txtAgeEditingController.clear();
    _txtUrlEditingController.clear();
    gender = 'gender';
  }
}
