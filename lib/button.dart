import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // MaterialButton(
            //   onPressed: () {
            //     print('hi i am material button');
            //   },
            //disabledColor: Colors.red,
            //disabledElevation: 20,
            //disabledTextColor: Colors.yellow,
            // elevation: 50,
            // focusColor: Colors.pink,
            // focusElevation: 50,
            //highlightColor: Colors.redAccent,
            //highlightElevation: 500,
            //hoverColor: Colors.purple,
            // hoverElevation: 50,
            //minWidth: 30,
            // onLongPress: () {
            //   print('hi i am longpress material button');
            // },
            // padding: EdgeInsets.all(20),
            // shape: Border.all(
            //   color: Colors.brown,
            //   width: 10,
            // ),
            //splashColor: Colors.brown,
            //textColor: Colors.amber,
            // child: const Text('material button'),
            //),
            // const SizedBox(
            //   height: 10,
            // ),
            ElevatedButton(
              onPressed: () {
                print('hi i am elevatedbutton');
              },
              child: const Text('elevatedbutton'),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            // TextButton(
            //   onPressed: () {
            //     print('hi i am textbutton');
            //   },
            //   child: const Text('textbutton'),
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            // IconButton(
            //     onPressed: () {
            //       print("Hi i am icon button");
            //     },
            //     icon: const Icon(Icons.menu)),
            // const SizedBox(
            //   height: 10,
            // ),
            // OutlinedButton(
            //     onPressed: () {
            //       print('hi i am outlinebutton');
            //     },
            //     child: const Text('outlinebutton')),
            // const SizedBox(
            //   height: 10,
            // ),
            // FloatingActionButton(
            //   //backgroundColor: Colors.amber,
            //   onPressed: () {
            //     print('Hi I Am Floating Action Button');
            //   },
            //disabledElevation: 50,
            //splashColor: Colors.red,
            //elevation: 100,
            //focusColor: Colors.red,
            //focusElevation: 50,
            //isExtended: true,
            //mini: true,
            // tooltip: 'mintan',
            //hoverColor: Colors.amber,
            //hoverElevation: 50,
            // shape: Border.all(
            //   color: Colors.amber,
            //   strokeAlign: 10,
            // ),
            //highlightElevation: 30,
            //   child: const Icon(Icons.add),
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            // FloatingActionButton.extended(
            //   onPressed: () {
            //     print('hi i am floatingextended buttun');
            //   },
            //   label: const Text('mintan'),
            //   icon: const Icon(Icons.add),
            // ),
            // FloatingActionButton.large(
            //   onPressed: () {
            //     print('i am large floatingbutton');
            //   },
            //   child: const Icon(Icons.add),
            // ),
            // FloatingActionButton.small(
            //   onPressed: () {
            //     print('i am large floatingbutton');
            //   },
            //   child: const Icon(Icons.add),
            // ),

            // const SizedBox(
            //   height: 10,
            // ),
            // GestureDetector(
            //   onTap: () {
            //     print('hi i am ontap event');
            //   },
            //   onDoubleTap: () {
            //     print('hi i am ondoubletap event');
            //   },
            //   onLongPress: () {
            //     print('hi i am onlongpress event');
            //   },
            //   child: Container(
            //     height: 100,
            //     width: 100,
            //     color: Colors.blue,
            //     alignment: Alignment.center,
            //     child: const Text('mintan'),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
