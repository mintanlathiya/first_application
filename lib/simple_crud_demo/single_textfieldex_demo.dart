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

  @override
  void dispose() {
    _txtNameEditingController.dispose();
    _txtSurNameEditingController.dispose();
    _txtAgeEditingController.dispose();
    super.dispose();
  }

  List<Map<String, dynamic>> userData = [];
  bool isUpdate = false;
  int selectedIndex = 0;
  String selectedGender = '';
  String gender = 'Gender', male = 'Male', female = 'FeMale';
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
            Row(
              children: [
                const Text('Gender :'),
                const Text('Male'),
                Radio(
                  value: male,
                  groupValue: selectedGender,
                  onChanged: (value) {
                    selectedGender = value!;
                    setState(() {});
                  },
                ),
                const Text('FeMale'),
                Radio(
                  value: female,
                  groupValue: selectedGender,
                  onChanged: (value) {
                    selectedGender = value!;
                    setState(() {});
                  },
                ),
              ],
            ),
            MaterialButton(
              onPressed: isUpdate
                  ? () {
                      userData[selectedIndex] = {
                        'name': _txtNameEditingController.text,
                        'surName': _txtSurNameEditingController.text,
                        'age': _txtAgeEditingController.text,
                        'Gender': selectedGender,
                      };
                      isUpdate = false;
                      _txtNameEditingController.clear();
                      _txtSurNameEditingController.clear();
                      _txtAgeEditingController.clear();
                      selectedGender = '';
                      setState(() {});
                    }
                  : () {
                      userData.add({
                        'name': _txtNameEditingController.text,
                        'surName': _txtSurNameEditingController.text,
                        'age': _txtAgeEditingController.text,
                        'Gender': selectedGender,
                      });
                      _txtNameEditingController.clear();
                      _txtSurNameEditingController.clear();
                      _txtAgeEditingController.clear();
                      selectedGender = '';
                      setState(() {});
                    },
              child: Text(isUpdate ? 'update' : 'submit'),
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
                          leading: CircleAvatar(
                            child: Text(userData[index]['age'].toString()),
                          ),
                          title: Text(userData[index]['name']),
                          subtitle: Text(userData[index]['surName']),
                          trailing: Text(userData[index]['Gender']),
                          onTap: () {
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
