import 'package:first_application/statefullexample/counter.controller.dart';
import 'package:flutter/material.dart';

class TicTacDemoUi extends StatefulWidget {
  const TicTacDemoUi({super.key});

  @override
  State<TicTacDemoUi> createState() => _TicTacDemoUiState();
}

class _TicTacDemoUiState extends State<TicTacDemoUi> {
  @override
  Widget build(BuildContext contect) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'PLAYER 1',
                      style: TextStyle(fontSize: 45),
                    ),
                    Text(
                      'Score ${TikTacmethod.oScore.toString()}',
                      style: const TextStyle(fontSize: 45),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      'PLAYER 2',
                      style: TextStyle(fontSize: 45),
                    ),
                    Text(
                      'Score ${TikTacmethod.xScore.toString()}',
                      style: const TextStyle(fontSize: 45),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
                child: GridView.builder(
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  TikTacmethod.tapped(index, context);
                  setState(() {});
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      color: Colors.red,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Text(
                   TikTacmethod.displayElement[index],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  color: Colors.red,
                  height: 80,
                  minWidth: 220,
                  shape: const BeveledRectangleBorder(
                      side: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  onPressed: () {
                    TikTacmethod.clearScoreBoard();
                    setState(() {});
                  },
                  child: const Text(
                    " clear Score Board",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                MaterialButton(
                  color: Colors.red,
                  height: 80,
                  minWidth: 220,
                  shape: const BeveledRectangleBorder(
                      side: BorderSide(),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  onPressed: () {
                    TikTacmethod.clearBoard();

                    setState(() {});
                  },
                  child: const Text(
                    "Restart",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
