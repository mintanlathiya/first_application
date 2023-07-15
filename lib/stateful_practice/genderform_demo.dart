import 'package:first_application/statefullexample/counter.controller.dart';
import 'package:flutter/material.dart';

class GenderFormUiDemo extends StatefulWidget {
  const GenderFormUiDemo({super.key});

  @override
  State<GenderFormUiDemo> createState() => _GenderFormUiDemoState();
}

class _GenderFormUiDemoState extends State<GenderFormUiDemo> {
  CrossFadeState maleCrossFadeState = CrossFadeState.showFirst,
      femaleCrossFadeState = CrossFadeState.showFirst,
      cricketCrossFadeState = CrossFadeState.showFirst,
      footballCrossFadeState = CrossFadeState.showFirst,
      cookingCrossFadeState = CrossFadeState.showFirst,
      swimmingCrossFadeState = CrossFadeState.showFirst,
      danceCrossFadeState = CrossFadeState.showFirst;
  double opacityLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          OnSubmit.isSubmitted == true ? Colors.lime : Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
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
                  GestureDetector(
                    onTap: () {
                      OnSubmit.selectedGender = OnSubmit.male;

                      OnSubmit.clearMethod();
                      maleCrossFadeState = OnSubmit.selectedGender == 'male'
                          ? CrossFadeState.showSecond
                          : CrossFadeState.showFirst;
                      femaleCrossFadeState = CrossFadeState.showFirst;

                      setState(() {});
                    },
                    child: AnimatedCrossFade(
                      firstChild: Container(
                        height: 80,
                        width: 150,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
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
                      secondChild: Container(
                        height: 80,
                        width: 150,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                        ),
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
                      crossFadeState: maleCrossFadeState,
                      firstCurve: Curves.bounceOut,
                      secondCurve: Curves.easeIn,
                      duration: const Duration(seconds: 1),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      OnSubmit.selectedGender = OnSubmit.female;

                      OnSubmit.clearMethod();
                      femaleCrossFadeState = OnSubmit.selectedGender == 'female'
                          ? CrossFadeState.showSecond
                          : CrossFadeState.showFirst;

                      maleCrossFadeState = CrossFadeState.showFirst;
                      setState(() {});
                    },
                    child: AnimatedCrossFade(
                      firstChild: Container(
                        height: 80,
                        width: 150,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Colors.white10,
                        ),
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
                      secondChild: Container(
                        height: 80,
                        width: 150,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                        ),
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
                      crossFadeState: femaleCrossFadeState,
                      firstCurve: Curves.bounceOut,
                      secondCurve: Curves.easeIn,
                      duration: const Duration(seconds: 1),
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    OnSubmit.isCricket = !OnSubmit.isCricket;
                    cricketCrossFadeState = OnSubmit.isCricket
                        ? CrossFadeState.showSecond
                        : CrossFadeState.showFirst;
                    setState(() {});
                  },
                  child: AnimatedCrossFade(
                    firstChild: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      height: 50,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                    secondChild: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      height: 50,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.orange,
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
                    crossFadeState: cricketCrossFadeState,
                    firstCurve: Curves.bounceOut,
                    secondCurve: Curves.easeIn,
                    duration: const Duration(seconds: 1),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    OnSubmit.isFootball = !OnSubmit.isFootball;
                    footballCrossFadeState = OnSubmit.isFootball
                        ? CrossFadeState.showSecond
                        : CrossFadeState.showFirst;
                    setState(() {});
                  },
                  child: AnimatedCrossFade(
                    firstChild: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      height: 50,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                    secondChild: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      height: 50,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.orange,
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
                    crossFadeState: footballCrossFadeState,
                    firstCurve: Curves.bounceOut,
                    secondCurve: Curves.easeIn,
                    duration: const Duration(seconds: 1),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    OnSubmit.isCooking = !OnSubmit.isCooking;
                    cookingCrossFadeState = OnSubmit.isCooking
                        ? CrossFadeState.showSecond
                        : CrossFadeState.showFirst;
                    setState(() {});
                  },
                  child: AnimatedCrossFade(
                    firstChild: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      height: 50,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                    secondChild: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      height: 50,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.orange,
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
                    crossFadeState: cookingCrossFadeState,
                    firstCurve: Curves.bounceOut,
                    secondCurve: Curves.easeIn,
                    duration: const Duration(seconds: 1),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    OnSubmit.isSwimming = !OnSubmit.isSwimming;
                    swimmingCrossFadeState = OnSubmit.isSwimming
                        ? CrossFadeState.showSecond
                        : CrossFadeState.showFirst;
                    setState(() {});
                  },
                  child: AnimatedCrossFade(
                    firstChild: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      height: 50,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                    secondChild: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      height: 50,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.orange,
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
                    crossFadeState: swimmingCrossFadeState,
                    firstCurve: Curves.bounceOut,
                    secondCurve: Curves.easeIn,
                    duration: const Duration(seconds: 1),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    OnSubmit.isDance = !OnSubmit.isDance;

                    danceCrossFadeState = OnSubmit.isDance
                        ? CrossFadeState.showSecond
                        : CrossFadeState.showFirst;
                    setState(() {});
                  },
                  child: AnimatedCrossFade(
                    firstChild: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      height: 50,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                    secondChild: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      height: 50,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.orange,
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
                    crossFadeState: danceCrossFadeState,
                    firstCurve: Curves.bounceOut,
                    secondCurve: Curves.easeIn,
                    duration: const Duration(seconds: 1),
                  ),
                ),
              ]),
            ),
            Center(
              child: MaterialButton(
                onPressed: () {
                  OnSubmit.addHobbyDetails();

                  OnSubmit.isSubmitted = !OnSubmit.isSubmitted;
                  opacityLevel = opacityLevel == 0 ? 1 : 0;

                  OnSubmit.clearMethod();
                  setState(() {});
                },
                color: Colors.white,
                shape: BeveledRectangleBorder(
                    side: OnSubmit.isSubmitted
                        ? const BorderSide(
                            color: Colors.brown,
                            width: 2,
                          )
                        : const BorderSide(),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                height: 80,
                minWidth: 160,
                child: const Text.rich(
                  TextSpan(
                    text: 'Su',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: 'bm',
                        style: TextStyle(color: Colors.blue),
                      ),
                      TextSpan(
                        text: 'it',
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            OnSubmit.isSubmitted
                ? GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: AnimatedOpacity(
                      opacity: opacityLevel,
                      duration: const Duration(seconds: 5),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(20),
                        height: 140,
                        color: Colors.white60,
                        child: ListView.builder(
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Text(
                              ' Gender is :- ${OnSubmit.selectedGender} \n Hobby  is :- ${OnSubmit.selectedHobbies}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  )
                : const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: 'There ',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 35,
                          ),
                          children: [
                            TextSpan(
                              text: "isn't ",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 30),
                            ),
                            TextSpan(
                              text: 'data',
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
