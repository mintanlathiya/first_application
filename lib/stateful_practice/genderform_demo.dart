import 'package:first_application/statefullexample/counter.controller.dart';
import 'package:flutter/material.dart';

class GenderFormUiDemo extends StatefulWidget {
  const GenderFormUiDemo({super.key});

  @override
  State<GenderFormUiDemo> createState() => _GenderFormUiDemoState();
}

class _GenderFormUiDemoState extends State<GenderFormUiDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 199, 207, 121),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Gender :',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      OnSubmit.selectedGender = OnSubmit.male;
                      OnSubmit.isSubmitted = false;
                      OnSubmit.clearHobbiesList();
                      setState(() {});
                    },
                    child: Card(
                      color: OnSubmit.selectedGender == 'male'
                          ? Colors.blue
                          : Colors.white,
                      elevation: (OnSubmit.selectedGender == 'male') ? 30 : 0,
                      child: Container(
                        height: 80,
                        width: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(
                          width: 3,
                          color: OnSubmit.selectedGender == 'male'
                              ? Colors.brown
                              : Colors.black,
                        )),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.male),
                            Text(
                              'male',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      OnSubmit.selectedGender = OnSubmit.female;
                      OnSubmit.isSubmitted = false;
                      OnSubmit.clearHobbiesList();
                      setState(() {});
                    },
                    child: Card(
                      elevation: (OnSubmit.selectedGender == 'female') ? 30 : 0,
                      color: (OnSubmit.selectedGender == 'female')
                          ? Colors.blue
                          : Colors.white,
                      child: Container(
                        height: 80,
                        width: 160,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(
                          width: 3,
                          color: OnSubmit.selectedGender == 'female'
                              ? Colors.brown
                              : Colors.black,
                        )),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.female),
                            Text(
                              'female',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Text(
              'Hobby :',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(children: [
              InkWell(
                onTap: () {
                  OnSubmit.isCricket = !OnSubmit.isCricket;
                  setState(() {});
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  height: 50,
                  width: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: OnSubmit.isCricket ? Colors.blue : Colors.white,
                    border: Border.all(
                      width: 2,
                      color: Colors.black,
                    ),
                  ),
                  child: const Text(
                    'cricket',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  OnSubmit.isFootball = !OnSubmit.isFootball;
                  setState(() {});
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  height: 50,
                  width: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: OnSubmit.isFootball ? Colors.blue : Colors.white,
                    border: Border.all(
                      width: 2,
                      color: Colors.black,
                    ),
                  ),
                  child: const Text(
                    'football',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  OnSubmit.isCooking = !OnSubmit.isCooking;
                  setState(() {});
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  height: 50,
                  width: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: OnSubmit.isCooking ? Colors.blue : Colors.white,
                    border: Border.all(
                      width: 2,
                      color: Colors.black,
                    ),
                  ),
                  child: const Text(
                    'cooking',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  OnSubmit.isSwimming = !OnSubmit.isSwimming;
                  setState(() {});
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  height: 50,
                  width: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: OnSubmit.isSwimming ? Colors.blue : Colors.white,
                    border: Border.all(
                      width: 2,
                      color: Colors.black,
                    ),
                  ),
                  child: const Text(
                    'Swimming',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  OnSubmit.isDance = !OnSubmit.isDance;
                  setState(() {});
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  height: 50,
                  width: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: OnSubmit.isDance ? Colors.blue : Colors.white,
                    border: Border.all(
                      width: 2,
                      color: Colors.black,
                    ),
                  ),
                  child: const Text(
                    'dance',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ]),
            Center(
              child: MaterialButton(
                onPressed: () {
                  OnSubmit.hobbyDetails();
                  OnSubmit.selectedGender;

                  OnSubmit.isSubmitted = !OnSubmit.isSubmitted;

                  setState(() {});
                },
                color: Colors.white,
                shape: BeveledRectangleBorder(
                    side: OnSubmit.isSubmitted
                        ? const BorderSide(
                            color: Colors.brown,
                            width: 3,
                          )
                        : const BorderSide(),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                height: 80,
                minWidth: 160,
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: OnSubmit.isSubmitted
                  ? Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.all(20),
                      height: 50,
                      width: 600,
                      color: Colors.white,
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Text(
                            'Gender is ${OnSubmit.selectedGender} \n Hobby is ${OnSubmit.selectedHobbies}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          );
                        },
                      ),
                    )
                  : const SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}
