import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
              radius: 30,
              //maxRadius: 100,
              //minRadius: 30,
            ),
            title: Text('mintan lathiya'),
            subtitle: Text('good morning'),
            trailing: Text('3:00am'),
            // iconColor: Colors.amber,
            textColor: Colors.green,
            //focusColor: Colors.black,
            //contentPadding: EdgeInsets.all(30),
            // horizontalTitleGap: 20,
            // hoverColor: Colors.blueGrey,
            //isThreeLine: true,
            // minLeadingWidth: 200,
            //minVerticalPadding: 50,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
              radius: 30,
            ),
            title: Text('mintan lathiya'),
            subtitle: Text('hello bro'),
            trailing: Text('3:00am'),

            //contentPadding: EdgeInsets.all(30),
            //selected: true,
            //splashColor: Colors.pink,
            // selectedColor: Colors.brown,
            //selectedTileColor: Colors.pink,
            // style: ListTileStyle.drawer,
            //tileColor: Colors.pink,
          ),
        ],
      ),
    );
  }
}
