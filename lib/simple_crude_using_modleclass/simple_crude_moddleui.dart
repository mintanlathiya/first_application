import 'package:first_application/simple_crude_using_modleclass/user_model.dart';
import 'package:flutter/material.dart';

class SimpleCrudeModdleDemo extends StatefulWidget {
  const SimpleCrudeModdleDemo({super.key});

  @override
  State<SimpleCrudeModdleDemo> createState() => _SimpleCrudeModdleDemoState();
}

class _SimpleCrudeModdleDemoState extends State<SimpleCrudeModdleDemo> {
  final TextEditingController _txtFirstNameEditingController =
      TextEditingController();
  final TextEditingController _txtEmailEditingController =
      TextEditingController();
  final TextEditingController _txtAgeEditingController =
      TextEditingController();
  final TextEditingController _txtUrlEditingController =
      TextEditingController();
  @override
  void dispose() {
    _txtFirstNameEditingController.dispose();
    _txtEmailEditingController.dispose();
    _txtAgeEditingController.dispose();
    _txtUrlEditingController.dispose();
    super.dispose();
  }

  List<User> userData = [];
  bool isUpDate = false;
  int selectedIndex = 0;
  String gender = 'gender', male = 'male', feMale = 'feMale';
  bool isCricket = false, isFootBall = false, isDancing = false;
  List selectedHobbies = [];
  double selectedSalary = 20000;
  List stream = ['arts', 'commerce', 'science'];
  String selectedStream = 'arts';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text('firstName'),
              ),
              controller: _txtFirstNameEditingController,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text('emailId'),
              ),
              controller: _txtEmailEditingController,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text('age'),
              ),
              controller: _txtAgeEditingController,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text('url'),
              ),
              controller: _txtUrlEditingController,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text('Gender :  '),
                const Text('Male :  '),
                Radio(
                  value: male,
                  groupValue: gender,
                  onChanged: (value) {
                    gender = value!;
                    setState(() {});
                  },
                ),
                const Text('feMale :  '),
                Radio(
                  value: feMale,
                  groupValue: gender,
                  onChanged: (value) {
                    gender = value!;
                    setState(() {});
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text('Hobby :  '),
                const Text('cricket'),
                Checkbox(
                  value: isCricket,
                  onChanged: (value) {
                    isCricket = value!;
                    setState(() {});
                  },
                ),
                const Text('football'),
                Checkbox(
                  value: isFootBall,
                  onChanged: (value) {
                    isFootBall = value!;
                    setState(() {});
                  },
                ),
                const Text('dance'),
                Checkbox(
                  value: isDancing,
                  onChanged: (value) {
                    isDancing = value!;
                    setState(() {});
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Slider(
              value: selectedSalary,
              onChanged: (value) {
                selectedSalary = value;
                setState(() {});
              },
              min: 20000,
              max: 50000,
              divisions: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            DropdownButton(
              items: stream
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (value) {
                selectedStream = value as String;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: isUpDate
                  ? () {
                      int value = 0;
                      try {
                        value = int.parse(_txtAgeEditingController.text);
                      } catch (e) {
                        value = 0;
                      }
                      selectedHobbies.clear();
                      if (isCricket == true) {
                        selectedHobbies.add('cricket');
                      }
                      if (isFootBall == true) {
                        selectedHobbies.add('footBall');
                      }
                      if (isDancing == true) {
                        selectedHobbies.add('dance');
                      }
                      userData[selectedIndex].firstName =
                          _txtFirstNameEditingController.text;
                      userData[selectedIndex].emailId =
                          _txtEmailEditingController.text;
                      userData[selectedIndex].age = value;
                      userData[selectedIndex].url =
                          _txtUrlEditingController.text;
                      userData[selectedIndex].gender = gender;
                      userData[selectedIndex].hobby =
                          List.from(selectedHobbies.map((e) => e));
                      userData[selectedIndex].salary = selectedSalary;
                      userData[selectedIndex].stream = selectedStream;
                      isUpDate = false;
                      clearData();
                      setState(() {});
                    }
                  : () {
                      int value = 0;
                      try {
                        value = int.parse(_txtAgeEditingController.text);
                      } catch (e) {
                        value = 0;
                      }
                      selectedHobbies.clear();
                      if (isCricket == true) {
                        selectedHobbies.add('cricket');
                      }
                      if (isFootBall == true) {
                        selectedHobbies.add('footBall');
                      }
                      if (isDancing == true) {
                        selectedHobbies.add('dance');
                      }
                      userData.add(User.fromJson({
                        'firstName': _txtFirstNameEditingController.text,
                        'emailId': _txtEmailEditingController.text,
                        'age': value,
                        'url': _txtUrlEditingController.text,
                        'gender': gender,
                        'hobby': List.from(selectedHobbies.map((e) => e)),
                        'salary': selectedSalary,
                        'stream': selectedStream,
                      }));
                      clearData();
                      setState(() {});
                    },
              child: Text(isUpDate ? 'update' : 'submit'),
            ),
            userData.isEmpty
                ? const Text('There is No Data')
                : Expanded(
                    child: ListView.builder(
                    itemCount: userData.length,
                    itemBuilder: (context, index) {
                      return Dismissible(
                        key: UniqueKey(),
                        onDismissed: (direction) {
                          userData.removeAt(index);
                          setState(() {});
                        },
                        child: InkWell(
                          onTap: () {
                            isUpDate = true;
                            selectedIndex = index;
                            _txtAgeEditingController.text =
                                userData[index].age!.toString();
                            _txtEmailEditingController.text =
                                userData[index].emailId!;
                            _txtFirstNameEditingController.text =
                                userData[index].firstName!;
                            _txtUrlEditingController.text =
                                userData[index].url!;
                            gender = userData[index].gender!;
                            selectedHobbies =
                                userData[index].hobby!.map((e) => e).toList();
                            if (userData[index].hobby!.contains('cricket')) {
                              isCricket = true;
                            }
                            if (userData[index].hobby!.contains('footBall')) {
                              isFootBall = true;
                            }
                            if (userData[index].hobby!.contains('dance')) {
                              isDancing = true;
                            }
                            selectedSalary = userData[index].salary!;
                            selectedStream = userData[index].stream!;
                            setState(() {});
                          },
                          child: Container(
                            color: Colors.purple,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      userData[index].url!.toString()),
                                  radius: 40,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'FirstName : ${userData[index].firstName!}'),
                                    Text('Email : ${userData[index].emailId!}'),
                                    Text(
                                        'age : ${userData[index].age!.toString()}'),
                                    Text('gender : ${userData[index].gender!}'),
                                    Text(
                                        'hobby : ${userData[index].hobby!.toString()}'),
                                    Text(
                                        '{salary : ${userData[index].salary!.toString()}'),
                                    Text('stream : ${userData[index].stream!}'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ))
          ],
        ),
      ),
    );
  }

  void clearData() {
    _txtFirstNameEditingController.clear();
    _txtEmailEditingController.clear();
    _txtAgeEditingController.clear();
    _txtUrlEditingController.clear();
    gender = 'gender';
    selectedHobbies.clear();
    isCricket = false;
    isFootBall = false;
    isDancing = false;
    selectedSalary = 20000;
    selectedStream = 'arts';
  }
}
