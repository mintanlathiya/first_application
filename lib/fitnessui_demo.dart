import 'package:flutter/material.dart';

class FitnessUi extends StatelessWidget {
  const FitnessUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Fitness',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const Text(
              'You Wanna',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const Text(
              'Have',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Container(
              height: 360,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/31.jpeg'),
                fit: BoxFit.fill,
              )),
            ),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  padding: const EdgeInsets.all(30),
                  height: 250,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 232, 224, 224),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          'Please Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.mail_outline),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Username@gmail.com'),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 4,
                      ),
                      Row(
                        children: [
                          Icon(Icons.lock),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('**********'),
                          ),
                          Spacer(),
                          Icon(Icons.remove_red_eye_outlined)
                        ],
                      ),
                      Divider(
                        thickness: 4,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Forget Details?'),
                            Text('Create account'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 250, left: 370),
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.purple, Colors.pink],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
