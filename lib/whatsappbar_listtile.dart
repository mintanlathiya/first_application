import 'package:flutter/material.dart';

class WhatsAppbarListTile extends StatelessWidget {
  const WhatsAppbarListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.indigo, Colors.grey, Colors.green, Colors.indigo],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          )),
        ),
        surfaceTintColor: Colors.grey,
        //backgroundColor: Colors.green,
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
                )
              ],
            )),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.green,
                radius: 35,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
              ),
              title: const Text(
                'mintan lathiya',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text('hello'),
              trailing: const Text('4:00pm'),
              onTap: () {},
              hoverColor: Colors.green,
              splashColor: Colors.blue,
              shape: const RoundedRectangleBorder(
                  side: BorderSide(width: 5, color: Colors.greenAccent),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.green,
                radius: 35,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
              ),
              title: const Text(
                'kappu',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text('ok'),
              trailing: const Text('3:00pm'),
              onTap: () {},
              hoverColor: Colors.green,
              splashColor: Colors.blue,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.green,
                radius: 35,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
              ),
              title: const Text(
                'jemish virani',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text('good morning'),
              trailing: const Text('8:00am'),
              onTap: () {},
              hoverColor: Colors.green,
              splashColor: Colors.blue,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 35,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
              ),
              title: Text(
                'jatin kacha',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('hii'),
              trailing: Text('2:00pm'),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 35,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
              ),
              title: Text(
                'pravin',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('free thai gayo aem ne.'),
              trailing: Text('10:00pm'),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 35,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
              ),
              title: Text(
                'mintan lathiya',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('hello'),
              trailing: Text('4:00am'),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 35,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
              ),
              title: Text(
                'mintan lathiya',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('hello'),
              trailing: Text('4:00am'),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 35,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
              ),
              title: Text(
                'mintan lathiya',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('hello'),
              trailing: Text('4:00am'),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 35,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
              ),
              title: Text(
                'mintan lathiya',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('hello'),
              trailing: Text('4:00am'),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 35,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
              ),
              title: Text(
                'mintan lathiya',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('hello'),
              trailing: Text('4:00am'),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 35,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
              ),
              title: Text(
                'mintan lathiya',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('hello'),
              trailing: Text('4:00am'),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 35,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
              ),
              title: Text(
                'mintan lathiya',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('hello'),
              trailing: Text('4:00am'),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 35,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
              ),
              title: Text(
                'mintan lathiya',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('hello'),
              trailing: Text('4:00am'),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 35,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
              ),
              title: Text(
                'mintan lathiya',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('hello'),
              trailing: Text('4:00am'),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 35,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
              ),
              title: Text(
                'mintan lathiya',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('hello'),
              trailing: Text('4:00am'),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 35,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
              ),
              title: Text(
                'mintan lathiya',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('hello'),
              trailing: Text('4:00am'),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 35,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
              ),
              title: Text(
                'mintan lathiya',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('hello'),
              trailing: Text('4:00am'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        elevation: 15,
        focusColor: Colors.red,
        splashColor: Colors.blue,
        // shape: const RoundedRectangleBorder(
        //     borderRadius: BorderRadius.only(
        //   topRight: Radius.circular(30),
        //   bottomRight: Radius.circular(30),
        //   topLeft: Radius.circular(30),
        // )
        //),
        child: const Icon(
          Icons.message,
        ),
      ),
    );
  }
}
