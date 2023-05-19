import 'package:flutter/material.dart';

class VerificationUi extends StatelessWidget {
  const VerificationUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Verification',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Touch Id sensor to',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.all(60),
                padding: const EdgeInsets.all(30),
                height: 280,
                width: 280,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.deepPurple.shade50,
                      strokeAlign: 20,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(140))),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.deepPurple.shade100,
                        strokeAlign: 20,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(120))),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        gradient: RadialGradient(colors: [
                          Colors.deepPurple.shade50,
                          Colors.deepPurple.shade50,
                        ], center: Alignment.center),
                        border: Border.all(
                          width: 2,
                          strokeAlign: 20,
                          color: Colors.deepPurple.shade200,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(120))),
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Colors.deepPurple.shade300,
                            strokeAlign: 20,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(120))),
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            border: Border.all(
                              width: 2,
                              color: Colors.deepPurple.shade400,
                              strokeAlign: 20,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(120))),
                        child: const Icon(
                          Icons.fingerprint,
                          color: Colors.white,
                          size: 80,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'verify transaction',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'please verify your Identify Using Touch ID and',
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'proceed transaction',
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.all(80),
            padding: const EdgeInsets.all(30),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                border: Border.all(
                  width: 2,
                  strokeAlign: 20,
                  color: Colors.purple,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(100))),
            child: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 40,
            ),
          )
        ],
      ),
    );
  }
}
