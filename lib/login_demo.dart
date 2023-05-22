import 'package:flutter/material.dart';

class LoginUi extends StatelessWidget {
  const LoginUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            height: 833,
            width: 620,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 199, 220, 237),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(120),
                  height: 110,
                  width: 110,
                  decoration: const BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: 45, top: 12, bottom: 5),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 10,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 32),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 10,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 7, left: 45),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  height: 85,
                  width: 300,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 239, 236, 236),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Email Address'),
                      Row(
                        children: [
                          Icon(Icons.mail_outline_outlined),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text('Username@gmail.com'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  height: 85,
                  width: 300,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 239, 236, 236),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Password'),
                      Row(
                        children: [
                          Icon(Icons.lock),
                          Text(
                            '..........',
                            style: TextStyle(fontSize: 30),
                          ),
                          Spacer(),
                          Icon(Icons.remove_red_eye_outlined),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment.center,
                  height: 60,
                  width: 300,
                  decoration: const BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  height: 60,
                  width: 320,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Signup'),
                      Text('Forgot Password?'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
