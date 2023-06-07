import 'package:first_application/listofmap_demo.dart/row_data.dart';
import 'package:first_application/listofmap_demo.dart/uesr_model.dart';
import 'package:flutter/material.dart';

class ModelScreenDemo extends StatelessWidget {
  const ModelScreenDemo({super.key});

  @override
  Widget build(BuildContext context) {
    for (var element in userCallDetails) {
      userCallData.add(UserCall.fromJson(element));
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'WhatsApp',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(
            Icons.camera,
            size: 50,
          ),
          Icon(
            Icons.search,
            size: 50,
          ),
          Icon(
            Icons.more_vert,
            size: 50,
          ),
        ],
        bottom: const PreferredSize(
            preferredSize: Size(double.infinity, 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.groups,
                  size: 50,
                  color: Colors.white,
                ),
                Text(
                  'Chats',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Status',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Calls',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            )),
      ),
      // body: Column(
      //   children: List.generate(
      //     userData.length,
      //     (index) => ListTile(
      //       leading: CircleAvatar(
      //         backgroundImage: AssetImage(userData[index].url!),
      //       ),
      //       title: Text(userData[index].userName!),
      //       subtitle: Text(userData[index].emailId!),
      //       trailing: Text(userData[index].time!),
      //     ),
      //   ),
      // ),
      body: Column(
        children: List.generate(
          userCallData.length,
          (index) => ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(userCallData[index].url!),
            ),
            title: Text(userCallData[index].name!),
            subtitle: Text(userCallData[index].time!),
            trailing: Icon(userCallData[index].icon!, color: Colors.green),
          ),
        ),
      ),
    );
  }
}
