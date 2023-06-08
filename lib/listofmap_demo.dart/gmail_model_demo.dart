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
    for (var element in gmailPageDetail) {
      gmailPageData.add(GmailPageDrawer.fromJson(element));
    }
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50))),
        backgroundColor: const Color.fromARGB(255, 207, 195, 195),
        title: const Text(
          'Search in mail',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/34.jpeg'),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(gmailDrawerData[index].iconName!),
                  );
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
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('primary'),
              ...List.generate(gmailPageData.length, (index) {
                if (gmailPageData[index].messageDate == null) {
                  return ListTile(
                      leading: Icon(
                        gmailPageData[index].icon!,
                        color: Colors.deepPurple,
                        size: 40,
                      ),
                      title: Text(
                        gmailPageData[index].senderName!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        gmailPageData[index].subName!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Container(
                        height: 28,
                        width: 55,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: Text(
                          gmailPageData[index].messageNumber!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ));
                } else {
                  return InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: CircleAvatar(
                            backgroundColor: Colors.amber,
                            child: Text(
                              gmailPageData[index]
                                  .senderName!
                                  .characters
                                  .first
                                  .toUpperCase(),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                gmailPageData[index].senderName!,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                gmailPageData[index].subName!,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              gmailPageData[index].messageDate!,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(gmailPageData[index].icon!),
                          ],
                        ),
                      ],
                    ),
                  );
                }
              }),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        width: 600,
        color: const Color.fromARGB(255, 207, 195, 195),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                Container(
                  height: 50,
                  width: 85,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 201, 166, 166),
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: const Icon(
                    Icons.mail,
                    size: 40,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50),
                  height: 20,
                  width: 40,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: const Text(
                    '99+',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.videocam_outlined,
              size: 40,
            ),
          ],
        ),
      ),
    );
  }
}
