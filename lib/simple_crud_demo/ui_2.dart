import 'package:flutter/material.dart';

class CrudTaskUi2 extends StatefulWidget {
  const CrudTaskUi2({super.key});

  @override
  State<CrudTaskUi2> createState() => _CrudTaskUi22State();
}

class _CrudTaskUi22State extends State<CrudTaskUi2> {
  final TextEditingController _txtNameController = TextEditingController();
  final TextEditingController _txtContactNumberController =
      TextEditingController();
  final TextEditingController _txtImageController = TextEditingController();
  final TextEditingController _txtEmailController = TextEditingController();
  final TextEditingController _txtDesignationController =
      TextEditingController();

  bool isUpdate = false;
  List stream = ['Science', 'Commerce', 'Arts'];

  String gender = "Gender", male = 'Male', female = 'Female';
  int selectedSalary = 10000;
  static bool isCricket = false,
      isFootBall = false,
      isDriving = false,
      isSinging = false;
  List hobbeySelected = [];

  // List<Map<String, dynamic>> hobbey = [
  //   {
  //     'hobbey': 'Cricket',
  //     'value': isCricket,
  //   },
  //   {
  //     'hobbey': 'Football',
  //     'value': isFootBall,
  //   },
  //   {
  //     'hobbey': 'Driving',
  //     'value': isDriving,
  //   },
  //   {
  //     'hobbey': 'Singing',
  //     'value': isSinging,
  //   },
  // ];

  List<Map<String, dynamic>> userData = [];
  String? selectedStrem;
  int selectedIndex = 0;
  @override
  void dispose() {
    _txtContactNumberController.dispose();
    _txtDesignationController.dispose();
    _txtEmailController.dispose();
    _txtImageController.dispose();
    _txtNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _txtNameController,
              decoration: const InputDecoration(
                label: Text('Name'),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: _txtContactNumberController,
              decoration: const InputDecoration(
                label: Text('Contact'),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: _txtImageController,
              decoration: const InputDecoration(
                label: Text('Image'),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: _txtEmailController,
              decoration: const InputDecoration(
                label: Text('Email'),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: _txtDesignationController,
              decoration: const InputDecoration(
                label: Text('Designation'),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Text('Strem'),
                const SizedBox(
                  width: 12,
                ),
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
                    selectedStrem = value as String;
                    setState(
                      () {},
                    );
                  },
                  value: selectedStrem,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Checkbox(
                  value: isCricket,
                  onChanged: (value) {
                    isCricket = value!;
                    setState(() {});
                  },
                ),
                const Text('Cricket'),
                Checkbox(
                  value: isFootBall,
                  onChanged: (value) {
                    isFootBall = value!;
                    setState(() {});
                  },
                ),
                const Text('FootBall'),
                Checkbox(
                  value: isDriving,
                  onChanged: (value) {
                    isDriving = value!;
                    setState(() {});
                  },
                ),
                const Text('Driving'),
                Checkbox(
                  value: isSinging,
                  onChanged: (value) {
                    isSinging = value!;
                    setState(() {});
                  },
                ),
                const Text('Singing'),
              ],
            ),
            // Row(
            //   children: List.generate(
            //     hobbey.length,
            //     (index) => Row(
            //       children: [
            //         Checkbox(
            //           value: hobbey[index]['value'],
            //           onChanged: (value) {
            //             hobbey[index]['value'] = value;
            //             setState(() {});
            //           },
            //         ),
            //         Text(
            //           hobbey[index]['hobbey'],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Text('Gender'),
                Radio(
                  value: male,
                  groupValue: gender,
                  onChanged: (value) {
                    gender = value!;

                    setState(() {});
                  },
                ),
                const Text('Male'),
                Radio(
                  value: female,
                  groupValue: gender,
                  onChanged: (value) {
                    gender = value!;

                    setState(() {});
                  },
                ),
                const Text('Female')
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Slider(
              min: 10000,
              max: 50000,
              value: selectedSalary.toDouble(),
              onChanged: (value) {
                selectedSalary = value.toInt();
                setState(() {});
              },
            ),
            MaterialButton(
              onPressed: isUpdate
                  ? () {
                      userData[selectedIndex]['name'] = _txtNameController.text;
                      userData[selectedIndex]['contact'] =
                          _txtContactNumberController.text;
                      userData[selectedIndex]['image'] =
                          _txtImageController.text;
                      userData[selectedIndex]['email'] =
                          _txtEmailController.text;
                      userData[selectedIndex]['designation'] =
                          _txtDesignationController.text;
                      userData[selectedIndex]['salary'] = selectedSalary;
                      userData[selectedIndex]['gender'] = gender;

                      // if (hobbeySelected.contains('FootBall')) {
                      //   isFootBall = true;
                      // }
                      // if (hobbeySelected.contains('Driving')) {
                      //   isDriving = true;
                      // }
                      // if (hobbeySelected.contains('Singing')) {
                      //   isSinging = true;
                      // }

                      isUpdate = false;
                      selectedStrem = null;
                      selectedSalary = 10000;

                      _txtContactNumberController.clear();
                      _txtDesignationController.clear();
                      _txtEmailController.clear();
                      _txtImageController.clear();
                      _txtNameController.clear();

                      setState(() {});
                    }
                  : () {
                      if (isCricket == true) {
                        hobbeySelected.add('Cricket');
                      }
                      if (isFootBall == true) {
                        hobbeySelected.add('FootBall');
                      }
                      if (isDriving == true) {
                        hobbeySelected.add('Driving');
                      }
                      if (isSinging == true) {
                        hobbeySelected.add('Singing');
                      }
                      userData.add({
                        'name': _txtNameController.text,
                        'contact': _txtContactNumberController.text,
                        'image': _txtImageController.text,
                        'email': _txtEmailController.text,
                        'designation': _txtDesignationController.text,
                        'strem': selectedStrem,
                        'hobbey': List.from(hobbeySelected.map((e) => e)),
                        'gender': gender,
                        'salary': selectedSalary,
                      });

                      isCricket = false;
                      isDriving = false;
                      isSinging = false;
                      isFootBall = false;
                      selectedStrem = null;
                      hobbeySelected.clear();

                      selectedSalary = 10000;
                      _txtContactNumberController.clear();
                      _txtDesignationController.clear();
                      _txtEmailController.clear();
                      _txtImageController.clear();
                      _txtNameController.clear();

                      setState(() {});
                    },
              color: Colors.blue,
              child: Text(
                isUpdate ? 'Update' : 'Submit',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: userData.isEmpty
                  ? const Text('No Data Found')
                  : ListView.builder(
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            isUpdate = true;
                            selectedIndex = index;
                            _txtContactNumberController.text =
                                userData[index]['contact'];
                            _txtDesignationController.text =
                                userData[index]['designation'];
                            _txtEmailController.text = userData[index]['email'];
                            _txtImageController.text = userData[index]['image'];
                            _txtNameController.text = userData[index]['name'];
                            selectedStrem = userData[index]['strem'];
                            hobbeySelected = userData[index]['hobbey']
                                .map((e) => e)
                                .toList();
                            selectedSalary = userData[index]['salary'];
                            if (userData[selectedIndex]['hobbey']
                                .contains('Cricket')) {
                              isCricket = true;
                            }

                            // if (hobbeySelected.contains('Cricket')) {
                            //   for (var ele in hobbey) {
                            //     ele['value'] = true;
                            //   }
                            // }

                            setState(() {});
                          },
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 50),
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      userData[index]['image'],
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Name : ${userData[index]['name']}',
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Contact : ${userData[index]['contact']}',
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Email : ${userData[index]['email']}',
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Designation : ${userData[index]['designation']}',
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Strem : ${userData[index]['strem']}',
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'Hobbey',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Row(
                                        children: List.generate(
                                          userData[index]['hobbey'].length,
                                          (index1) => Padding(
                                            padding:
                                                const EdgeInsets.only(right: 5),
                                            child: Text(
                                              userData[index]['hobbey'][index1],
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text('Gender : ${userData[index]['gender']}'),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text('Salary ${userData[index]['salary']}')
                                ],
                              )
                            ],
                          ),
                        );
                      },
                      itemCount: userData.length,
                    ),
            )
          ],
        ),
      ),
    );
  }
}
