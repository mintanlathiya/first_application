import 'package:flutter/material.dart';

class DividerDemo extends StatelessWidget {
  const DividerDemo({super.key});
  @override
  Widget build(BuildContext context) {
    // return const Scaffold(
    //   body: IntrinsicWidth(
    //     child: Column(
    //       children: [
    //         Text('mintan'),
    //         Divider(
    //           //5indent: 20,
    //           //endIndent: 20,
    //           color: Colors.amber,
    //           thickness: 2,
    //           height: 20,
    //         ),
    //         Text('lathiya'),
    //       ],
    //     ),
    //   ),
    // );
    return const Scaffold(
      body: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text('mintan'),
                Text('lathiya'),
              ],
            ),
            VerticalDivider(
              width: 10,
              color: Colors.black,
            ),
            Column(
              children: [
                Text('mintan'),
                Text('lathiya'),
              ],
            ),
            VerticalDivider(
              width: 10,
              color: Colors.black,
            ),
            Column(
              children: [
                Text('mintan'),
                Text('lathiya'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
