import 'package:flutter/material.dart';

class AppBarUiDemo extends StatelessWidget {
  const AppBarUiDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: const Icon(
          Icons.menu,
          size: 50,
        ),
        title: const Text(
          'Whatsapp',
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.camera,
          ),
          Icon(
            Icons.search,
          ),
          Icon(
            Icons.more_vert,
          ),
        ],

        bottom: const PreferredSize(
            preferredSize: Size(double.infinity, 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.groups),
                Text('Chats'),
                Text('Status'),
                Text('Calls'),
              ],
            )),

        //automaticallyImplyLeading: false,
        //flexibleSpace: const Icon(Icons.mail),
        //leadingWidth: 10,
        //titleSpacing: 150,
        // titleTextStyle: const TextStyle(
        //   fontSize: 50,
        // ),

        //actionsIconTheme: const IconThemeData(color: Colors.blue),
        //elevation: 25,
        //toolbarHeight: 150,
        //toolbarOpacity: 0.5,
        //toolbarTextStyle: const TextStyle(fontSize: 50),
        //shadowColor: Colors.blue,
        // surfaceTintColor: Colors.amber,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),

      // bottomNavigationBar: const Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     Icon(Icons.home),
      //     Icon(Icons.share),
      //     Icon(Icons.home),
      //     Icon(Icons.home),
      //   ],
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'call',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'setting',
          ),
        ],
        backgroundColor: Colors.greenAccent,
        iconSize: 40,
        selectedItemColor: Colors.red,
      ),
    );
  }
}
