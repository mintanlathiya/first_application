import 'package:first_application/listofmap_demo.dart/row_data.dart';
import 'package:flutter/material.dart';

class WhatsAppListOfMapDemo extends StatelessWidget {
  const WhatsAppListOfMapDemo({super.key});

  @override
  Widget build(BuildContext context) {
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
        bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.groups,
                  size: 50,
                  color: Colors.white,
                ),
                InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Column(
                      children: List.generate(
                        whatsappList.length,
                        (index) => ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage(whatsappList[index]['url']),
                          ),
                          title: Text(whatsappList[index]['name']),
                          subtitle: Text(whatsappList[index]['message']),
                          trailing: Text(whatsappList[index]['time']),
                        ),
                      ),
                    )));
                  },
                  child: const Text(
                    'Chats',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Text(
                  'Status',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Column(
                      children: List.generate(
                        whatsappList.length,
                        (index) => ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage(whatsappList[index]['url']),
                          ),
                          title: Text(whatsappList[index]['name']),
                          subtitle: Text(whatsappList[index]['time']),
                          trailing: Icon(whatsappList[index]['icon'],
                              color: Colors.green),
                        ),
                      ),
                    )));
                  },
                  child: const Text(
                    'Calls',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )),
      ),
      // body: Column(
      //   children: List.generate(
      //     whatsappList.length,
      //     (index) => ListTile(
      //       leading: CircleAvatar(
      //         backgroundImage: AssetImage(whatsappList[index]['url']),
      //       ),
      //       title: Text(whatsappList[index]['name']),
      //       subtitle: Text(whatsappList[index]['message']),
      //       trailing: Text(whatsappList[index]['time']),
      //     ),
      //   ),
      // ),
      // body: Column(
      //   children: List.generate(
      //     whatsappList.length,
      //     (index) => ListTile(
      //       leading: CircleAvatar(
      //         backgroundImage: AssetImage(whatsappList[index]['url']),
      //       ),
      //       title: Text(whatsappList[index]['name']),
      //       subtitle: Text(whatsappList[index]['time']),
      //       trailing: Icon(whatsappList[index]['icon'], color: Colors.green),
      //     ),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        splashColor: Colors.red,
        child: const Icon(
          Icons.message,
        ),
      ),
    );
  }
}
