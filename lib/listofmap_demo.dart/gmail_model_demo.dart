import 'package:first_application/listofmap_demo.dart/row_data.dart';
import 'package:first_application/listofmap_demo.dart/uesr_model.dart';
import 'package:flutter/material.dart';

class GmailModelDemo extends StatelessWidget {
  const GmailModelDemo({super.key});

  @override
  Widget build(BuildContext context) {
    for (var element in gmailDrawer) {
      gmailDrawerData.add(GmailDrawer.fromJson(element));
    }
    return Scaffold(
        appBar: AppBar(
          title: const Text('Search in mail'),
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Gmail',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              ...List.generate(gmailDrawerData.length, (index) {
                if (gmailDrawerData[index].iconName == null) {
                  return const Divider();
                } else if (gmailDrawerData[index].icon == null) {
                  return Text(gmailDrawerData[index].iconName!);
                } else if (gmailDrawerData[index].messageNumber == null) {
                  return ListTile(
                    leading: Icon(gmailDrawerData[index].icon!),
                    title: Text(gmailDrawerData[index].iconName!),
                  );
                } else {
                  return ListTile(
                    leading: Icon(gmailDrawerData[index].icon!),
                    title: Text(gmailDrawerData[index].iconName!),
                    trailing: Text(gmailDrawerData[index].messageNumber!),
                  );
                }
              }),
            ]),
          ),
        ));
  }
}
