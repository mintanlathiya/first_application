import 'package:first_application/listofmap_demo.dart/row_data.dart';
import 'package:flutter/material.dart';

class TabbarControllerDemo extends StatefulWidget {
  const TabbarControllerDemo({super.key});

  @override
  State<TabbarControllerDemo> createState() => _TabbarControllerDemoState();
}

class _TabbarControllerDemoState extends State<TabbarControllerDemo>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('whatsApp'),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 70),
          child: TabBar(
            controller: _tabController,
            tabs: const [
              Text('chats'),
              Text('Status'),
              Text('Calls'),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          ChatsDemo(),
          StatusDemo(),
          CallDemo(),
        ],
      ),
    );
  }
}

class CallDemo extends StatefulWidget {
  const CallDemo({super.key});

  @override
  State<CallDemo> createState() => _CallDemoState();
}

class _CallDemoState extends State<CallDemo> {
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

class StatusDemo extends StatefulWidget {
  const StatusDemo({super.key});

  @override
  State<StatusDemo> createState() => _StatusDemoState();
}

class _StatusDemoState extends State<StatusDemo> {
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

class ChatsDemo extends StatefulWidget {
  const ChatsDemo({super.key});

  @override
  State<ChatsDemo> createState() => _ChatsDemoState();
}

class _ChatsDemoState extends State<ChatsDemo> {
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
