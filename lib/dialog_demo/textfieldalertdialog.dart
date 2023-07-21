import 'package:first_application/dialog_demo/textfieldalertdialog_contoller.dart';
import 'package:flutter/material.dart';

class SingleTextFieldAlertDialogDemo extends StatefulWidget {
  const SingleTextFieldAlertDialogDemo({super.key});

  @override
  State<SingleTextFieldAlertDialogDemo> createState() =>
      _SingleTextFieldAlertDialogDemoState();
}

class _SingleTextFieldAlertDialogDemoState
    extends State<SingleTextFieldAlertDialogDemo> {
  @override
  void dispose() {
    TextAlertController.txtNameEditingController.dispose();
    TextAlertController.txtSurNameEditingController.dispose();
    TextAlertController.txtAgeEditingController.dispose();
    TextAlertController.txtMobileEditingController.dispose();
    TextAlertController.txtEmailEditingController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: TextAlertController.key,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(
                  controller: TextAlertController.txtNameEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Name',
                    labelText: 'Name',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: TextAlertController.txtSurNameEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'SurName',
                    labelText: 'SurName',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: TextAlertController.txtUrlEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Url',
                    labelText: 'Url',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: TextAlertController.txtAgeEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Age',
                    labelText: 'Age',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: TextAlertController.txtMobileEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Mobile Number',
                    labelText: 'Mobile Number',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: TextAlertController.txtEmailEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'EmailId',
                    labelText: 'EmailId',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter EmailId';
                    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$')
                        .hasMatch(value)) {
                      return 'valied Email';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text('Gender :  '),
                    const Text('male '),
                    Radio(
                      value: TextAlertController.male,
                      groupValue: TextAlertController.gender,
                      onChanged: (value) {
                        TextAlertController.gender = value!;
                        setState(() {});
                      },
                    ),
                    const Text('feMale '),
                    Radio(
                      value: TextAlertController.feMale,
                      groupValue: TextAlertController.gender,
                      onChanged: (value) {
                        TextAlertController.gender = value!;
                        setState(() {});
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                    onPressed: () {
                      TextAlertController.addUser();
                      TextAlertController.clearMethod();
                      setState(() {});
                    },
                    child: RichText(
                      text: const TextSpan(
                          text: 'Su',
                          style: TextStyle(fontSize: 30, color: Colors.orange),
                          children: [
                            TextSpan(
                                text: 'bm',
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: 'it',
                                style: TextStyle(color: Colors.green)),
                          ]),
                    )),
                TextAlertController.userData.isEmpty
                    ? const Text('There is not data')
                    : Expanded(
                        child: ListView.builder(
                          itemCount: TextAlertController.userData.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () async {
                                TextAlertController.selectedIndex = index;
                                TextAlertController.onTapUserData();

                                await showDialog(
                                  context: context,
                                  builder: (context) {
                                    return StatefulBuilder(
                                      builder: (context, setState) =>
                                          SimpleDialog(
                                        children: [
                                          Form(
                                              key:
                                                  TextAlertController.keyUpdate,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: Column(
                                                  children: [
                                                    TextFormField(
                                                      controller:
                                                          TextAlertController
                                                              .txtUpdateNameEditingController,
                                                      decoration:
                                                          const InputDecoration(
                                                              border:
                                                                  OutlineInputBorder(),
                                                              hintText: 'Name'),
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    TextFormField(
                                                      controller:
                                                          TextAlertController
                                                              .txtUpdateSurnameEditingController,
                                                      decoration:
                                                          const InputDecoration(
                                                              border:
                                                                  OutlineInputBorder(),
                                                              hintText:
                                                                  'SurName'),
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    TextFormField(
                                                      controller:
                                                          TextAlertController
                                                              .txtUpdateUrlEditingController,
                                                      decoration:
                                                          const InputDecoration(
                                                              border:
                                                                  OutlineInputBorder(),
                                                              hintText: 'Url'),
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    TextFormField(
                                                      controller:
                                                          TextAlertController
                                                              .txtUpdateAgeEditingController,
                                                      decoration:
                                                          const InputDecoration(
                                                              border:
                                                                  OutlineInputBorder(),
                                                              hintText: 'Age'),
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    TextFormField(
                                                      controller:
                                                          TextAlertController
                                                              .txtUpdateMobileEditingController,
                                                      decoration:
                                                          const InputDecoration(
                                                              border:
                                                                  OutlineInputBorder(),
                                                              hintText:
                                                                  'Mobile Number'),
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    TextFormField(
                                                      controller:
                                                          TextAlertController
                                                              .txtUpdateEmailEditingController,
                                                      validator: (value) {
                                                        if (value!.isEmpty) {
                                                          return 'Enter EmailId';
                                                        } else if (!RegExp(
                                                                r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$')
                                                            .hasMatch(value)) {
                                                          return 'valied Email';
                                                        } else {
                                                          return null;
                                                        }
                                                      },
                                                      decoration:
                                                          const InputDecoration(
                                                              border:
                                                                  OutlineInputBorder(),
                                                              hintText:
                                                                  'EmailId'),
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Text(
                                                            'Gender :  '),
                                                        const Text('male '),
                                                        Radio(
                                                          value:
                                                              TextAlertController
                                                                  .male,
                                                          groupValue:
                                                              TextAlertController
                                                                  .gender,
                                                          onChanged: (value) {
                                                            TextAlertController
                                                                    .gender =
                                                                value!;
                                                            setState(() {});
                                                          },
                                                        ),
                                                        const Text('feMale '),
                                                        Radio(
                                                          value:
                                                              TextAlertController
                                                                  .feMale,
                                                          groupValue:
                                                              TextAlertController
                                                                  .gender,
                                                          onChanged: (value) {
                                                            TextAlertController
                                                                    .gender =
                                                                value!;
                                                            setState(() {});
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Row(
                                                      children: [
                                                        MaterialButton(
                                                          onPressed: () {
                                                            if (TextAlertController
                                                                .keyUpdate
                                                                .currentState!
                                                                .validate()) {
                                                              TextAlertController
                                                                  .updateUserDetail();
                                                              TextAlertController
                                                                  .clearUpDateMethod();

                                                              Navigator.pop(
                                                                  context);
                                                              setState(
                                                                () {},
                                                              );
                                                            }
                                                          },
                                                          child: const Text(
                                                              'Update'),
                                                        ),
                                                        MaterialButton(
                                                          onPressed: () {
                                                            Navigator.pop(
                                                                context);
                                                            setState(
                                                              () {},
                                                            );
                                                          },
                                                          child: const Text(
                                                              'cancle'),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ))
                                        ],
                                      ),
                                    );
                                  },
                                );
                                setState(() {});
                              },
                              child: Dismissible(
                                key: UniqueKey(),
                                onDismissed: (direction) {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text('are you sure?'),
                                        actions: [
                                          MaterialButton(
                                            onPressed: () {
                                              TextAlertController.userData
                                                  .removeAt(index);
                                              Navigator.pop(context);
                                              setState(
                                                () {},
                                              );
                                            },
                                            child: const Text('Delete'),
                                          ),
                                          MaterialButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              setState(
                                                () {},
                                              );
                                            },
                                            child: const Text('cancle'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                  setState(() {});
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 120,
                                      padding: const EdgeInsets.all(10),
                                      decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 189, 227, 244),
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  CircleAvatar(
                                                    backgroundImage:
                                                        NetworkImage(
                                                            TextAlertController
                                                                .userData[index]
                                                                .url!),
                                                    radius: 40,
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      'Name : ${TextAlertController.userData[index].name!}'),
                                                  Text(
                                                      'SurName : ${TextAlertController.userData[index].surName!}'),
                                                  Text(
                                                      'Age : ${TextAlertController.userData[index].age!.toString()}'),
                                                  Text(
                                                      'Mobile Number : ${TextAlertController.userData[index].mobileNumber!.toString()}'),
                                                  Text(
                                                      'EmailId : ${TextAlertController.userData[index].emailId!}'),
                                                  Text(
                                                      'Gender : ${TextAlertController.userData[index].gender!}'),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Divider(
                                      height: 2,
                                      color: Colors.black,
                                      thickness: 3,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
              ],
            ),
          )),
    );
  }
}
