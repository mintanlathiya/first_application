import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleDialogDemo extends StatefulWidget {
  const SimpleDialogDemo({super.key});

  @override
  State<SimpleDialogDemo> createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              onPressed: () async {
                await showDialog(
                  barrierDismissible: false,
                  //useSafeArea: true,
                  context: context,
                  builder: (context) {
                    return const SimpleDialog(
                      title: Text('simple dialog tittle'),
                      alignment: Alignment.center,
                      backgroundColor: Colors.amber,
                      contentPadding: EdgeInsets.all(20),
                      elevation: 20,
                      insetPadding: EdgeInsets.only(bottom: 20),
                      shadowColor: Colors.black,
                      shape: BeveledRectangleBorder(),
                      surfaceTintColor: Colors.red,
                      children: [
                        Text('mintan'),
                        Text('lathiya'),
                        Text('kanjibhai'),
                      ],
                    );
                  },
                );
              },
              child: const Text('show simple dialog'),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('alert dialog'),
                      content: const Text('alert content'),
                      actions: [
                        MaterialButton(
                          onPressed: () {},
                          child: const Text('ok'),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: const Text('cancle'),
                        ),
                      ],
                      backgroundColor: Colors.amber,
                      actionsAlignment: MainAxisAlignment.center,
                      actionsOverflowButtonSpacing: 20,
                      actionsOverflowDirection: VerticalDirection.down,
                      actionsPadding: const EdgeInsets.only(bottom: 20),
                      actionsOverflowAlignment: OverflowBarAlignment.start,
                      alignment: Alignment.topCenter,
                      buttonPadding: const EdgeInsets.all(20),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 50),
                      contentTextStyle: const TextStyle(color: Colors.red),
                      elevation: 20,
                      icon: const Icon(Icons.message),
                      iconColor: Colors.pinkAccent,
                      iconPadding: const EdgeInsets.all(15),
                      insetPadding: const EdgeInsets.only(bottom: 50, top: 5),
                      scrollable: true,
                      shadowColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      titlePadding: const EdgeInsets.all(20),
                      titleTextStyle: const TextStyle(color: Colors.brown),
                    );
                  },
                );
              },
              child: const Text('show alert dialog'),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      insetAnimationCurve: Curves.bounceOut,
                      insetAnimationDuration: const Duration(seconds: 10),
                      title: const Text('curpertino'),
                      content: const Text('are  you sure'),
                      actions: [
                        MaterialButton(
                          onPressed: () {},
                          child: const Text('ok'),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: const Text('cancle'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('show curpertino dialog'),
            ),
            MaterialButton(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationIcon: const Icon(Icons.person),
                  applicationName: "myApp",
                  applicationVersion: '3.5.55',
                  routeSettings: const RouteSettings(
                      name: 'mintan', arguments: Icon(Icons.call)),
                  applicationLegalese: 'mintan lathiya',
                  anchorPoint: const Offset(0, 1.5),
                  useRootNavigator: false,
                );
              },
              child: const Text('about dialog'),
            )
          ],
        ),
      ),
    );
  }
}
