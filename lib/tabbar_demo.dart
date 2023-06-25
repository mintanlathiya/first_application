import 'package:first_application/listofmap_demo.dart/row_data.dart';
import 'package:flutter/material.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //initialIndex: 0,
      //animationDuration: const Duration(seconds: 10),
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('WhatsApp', style: TextStyle(fontSize: 40)),
          actions: const [
            Icon(Icons.camera_alt),
            SizedBox(width: 10),
            Icon(Icons.search),
            Icon(Icons.more_vert)
          ],
          bottom: const PreferredSize(
            preferredSize: Size(double.infinity, 70),
            child: TabBar(
              //dividerColor: Colors.amber,
              tabs: [
                Text('chats', style: TextStyle(fontSize: 30)),
                Text('Status', style: TextStyle(fontSize: 30)),
                Text('Calls', style: TextStyle(fontSize: 30)),
              ],
              // indicator: BoxDecoration(
              //     color: Colors.orange,
              //     borderRadius: BorderRadius.all(Radius.circular(12))),

              //indicatorColor: Colors.white,
              //indicatorSize: TabBarIndicatorSize.tab,
              //indicatorWeight: 5,
              //isScrollable: true,
              //indicatorPadding: EdgeInsets.all(2),
            ),
          ),
        ),
        body: const TabBarView(
          //physics: BouncingScrollPhysics(),
          //viewportFraction: 0.5,
          //dragStartBehavior: DragStartBehavior.down,
          children: [
            Chats(),
            Status(),
            Calls(),
          ],
        ),
      ),
    );
  }
}

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green,
            radius: 30,
            child: Icon(
              Icons.link,
              size: 30,
            ),
          ),
          title: Text('Create call link'),
          subtitle: Text('share a link for your Whatsapp call'),
        ),
        const Text('      Recent '),
        ...List.generate(
            whatsappList.length,
            (index) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(whatsappList[index]['url']),
                  ),
                  title: Text(whatsappList[index]['name']),
                  subtitle: Text(whatsappList[index]['message']),
                  trailing: Icon(
                    whatsappList[index]['icon'],
                    color: Colors.green,
                  ),
                )),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.add_ic_call),
      ),
    );
  }
}

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/3.jpeg'),
            radius: 30,
          ),
          title: Text('My status'),
          subtitle: Text('tap to add status update'),
        ),
        const Text('      Recent updates'),
        ...List.generate(
            whatsappList.length,
            (index) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 30,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(whatsappList[index]['url']),
                    ),
                  ),
                  title: Text(whatsappList[index]['name']),
                  subtitle: Text(whatsappList[index]['time']),
                )),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(
          whatsappList.length,
          (index) => ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(whatsappList[index]['url']),
            ),
            title: Text(whatsappList[index]['name']),
            subtitle: Text(whatsappList[index]['message']),
            trailing: Text(whatsappList[index]['time']),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.message),
      ),
    );
  }
}
