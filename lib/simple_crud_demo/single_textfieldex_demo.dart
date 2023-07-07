import 'package:flutter/material.dart';

class SingleTextFieldExDemo extends StatefulWidget {
  const SingleTextFieldExDemo({super.key});

  @override
  State<SingleTextFieldExDemo> createState() => _SingleTextFieldExDemoState();
}

class _SingleTextFieldExDemoState extends State<SingleTextFieldExDemo> {
  final TextEditingController _txtNameEditingController =
      TextEditingController();
  final TextEditingController _txtSurNameEditingController =
      TextEditingController();
  final TextEditingController _txtAgeEditingController =
      TextEditingController();
  final TextEditingController _txtUrlEditingController =
      TextEditingController();

  @override
  void dispose() {
    _txtNameEditingController.dispose();
    _txtSurNameEditingController.dispose();
    _txtAgeEditingController.dispose();
    _txtUrlEditingController.dispose();
    super.dispose();
  }

  List<Map<String, dynamic>> userData = [];
  bool isUpdate = false;
  int selectedIndex = 0;

  List selectHobbiesList = [];

  bool isCricket = false, isFootball = false, isSinging = false;
  String gender = 'gender', male = 'Male', female = 'FeMale';
  double selectSalary = 2000;
  List stream = ['science', 'commerce', 'arts'];
  String? selectedStream = 'science';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _txtNameEditingController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                label: Text('Name'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _txtSurNameEditingController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                label: Text('SurName'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _txtAgeEditingController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                label: Text('Age'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _txtUrlEditingController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                label: Text('url'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text('Stream :  '),
                DropdownButton(
                  items: stream
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    selectedStream = value as String;
                    setState(() {});
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Slider(
              value: selectSalary,
              onChanged: (value) {
                selectSalary = value;
                setState(() {});
              },
              min: 2000,
              max: 5000,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  'Gender :  ',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Male',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Radio(
                  value: male,
                  groupValue: gender,
                  onChanged: (value) {
                    gender = value!;
                    setState(() {});
                  },
                ),
                const Text(
                  'FeMale',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Radio(
                  value: female,
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
                const Text(
                  'Hobby:  ',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Checkbox(
                  value: isCricket,
                  onChanged: (value) {
                    isCricket = value!;

                    setState(() {});
                  },
                ),
                const Text(
                  'cricket',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Checkbox(
                  value: isFootball,
                  onChanged: (value) {
                    isFootball = value!;

                    setState(() {});
                  },
                ),
                const Text(
                  'football',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Checkbox(
                  value: isSinging,
                  onChanged: (value) {
                    isSinging = value!;

                    setState(() {});
                  },
                ),
                const Text(
                  'singing',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            MaterialButton(
              onPressed: isUpdate
                  ? () {
                      selectHobbiesList.clear();
                      if (isCricket == true) {
                        selectHobbiesList.add('cricket');
                      }
                      if (isFootball == true) {
                        selectHobbiesList.add('football');
                      }
                      if (isSinging == true) {
                        selectHobbiesList.add('singing');
                      }
                      userData[selectedIndex] = {
                        'name': _txtNameEditingController.text,
                        'surName': _txtSurNameEditingController.text,
                        'age': _txtAgeEditingController.text,
                        'gender': gender,
                        'hobby': List.from(selectHobbiesList.map((e) => e)),
                        'url': _txtUrlEditingController.text,
                        'salary': selectSalary,
                        'stream': selectedStream,
                      };

                      isUpdate = false;
                      _txtNameEditingController.clear();
                      _txtSurNameEditingController.clear();
                      _txtAgeEditingController.clear();
                      _txtUrlEditingController.clear();
                      selectHobbiesList.clear();
                      selectSalary = 2000;
                      selectedStream = null;
                      gender = 'gender';
                      isCricket = false;
                      isFootball = false;
                      isSinging = false;

                      setState(() {});
                    }
                  : () {
                      selectHobbiesList.clear();
                      if (isCricket == true) {
                        selectHobbiesList.add('cricket');
                      }
                      if (isFootball == true) {
                        selectHobbiesList.add('football');
                      }
                      if (isSinging == true) {
                        selectHobbiesList.add('singing');
                      }
                      userData.add({
                        'name': _txtNameEditingController.text,
                        'surName': _txtSurNameEditingController.text,
                        'age': _txtAgeEditingController.text,
                        'gender': gender,
                        'hobby': List.from(selectHobbiesList.map((e) => e)),
                        'url': _txtUrlEditingController.text,
                        'salary': selectSalary,
                        'stream': selectedStream,
                      });

                      _txtNameEditingController.clear();
                      _txtSurNameEditingController.clear();
                      _txtAgeEditingController.clear();
                      _txtUrlEditingController.clear();
                      gender = 'gender';
                      selectHobbiesList.clear();
                      selectSalary = 2000;
                      selectedStream = null;
                      isCricket = false;
                      isFootball = false;
                      isSinging = false;
                      setState(() {});
                    },
              child: Text(
                isUpdate ? 'update' : 'submit',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            userData.isEmpty
                ? const Text(
                    'there is no data',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Dismissible(
                        onDismissed: (direction) {
                          userData.removeAt(index);
                          setState(() {});
                        },
                        key: UniqueKey(),
                        background: Container(
                          color: Colors.red,
                          child: const Icon(Icons.delete),
                        ),
                        secondaryBackground: Container(
                          color: Colors.green,
                          child: const Icon(Icons.archive),
                        ),
                        child: InkWell(
                          onTap: () {
                            isUpdate = true;
                            selectedIndex = index;
                            gender = userData[index]['gender'];
                            _txtNameEditingController.text =
                                userData[index]['name'];
                            _txtSurNameEditingController.text =
                                userData[index]['surName'];
                            _txtAgeEditingController.text =
                                userData[index]['age'];
                            _txtUrlEditingController.text =
                                userData[index]['url'];
                            selectHobbiesList =
                                userData[index]['hobby'].map((e) => e).toList();
                            if (userData[index]['hobby'].contains('cricket')) {
                              isCricket = true;
                            }
                            if (userData[index]['hobby'].contains('football')) {
                              isFootball = true;
                            }
                            if (userData[index]['hobby'].contains('singing')) {
                              isSinging = true;
                            }
                            selectSalary = userData[index]['salary'];
                            selectedStream = userData[index]['stream'];

                            setState(() {});
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        NetworkImage(userData[index]['url']),
                                    radius: 35,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Name :  ${userData[index]['name']}'),
                                    Text(
                                        'surName :  ${userData[index]['surName']}'),
                                    Text(
                                        "age :  ${userData[index]['age'].toString()}"),
                                    Text(
                                        'Gender :  ${userData[index]['gender']}'),
                                    Text(
                                        'Stream :  ${userData[index]['stream']}'),
                                    Text(
                                        'Hobby :  ${userData[index]['hobby']}'),
                                    Text(
                                        'Salary :  ${userData[index]['salary']}'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: userData.length,
                  )),
          ],
        ),
      ),
    );
  }
}
