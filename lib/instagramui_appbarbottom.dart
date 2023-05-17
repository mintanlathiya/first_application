import 'package:flutter/material.dart';

class InstaAppbarBottonUi extends StatelessWidget {
  const InstaAppbarBottonUi({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Instagram',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(
            Icons.favorite,
            color: Colors.black,
            size: 30,
          ),
          Icon(
            Icons.message,
            color: Colors.black,
            size: 30,
          ),
        ],
        bottom: const PreferredSize(
            preferredSize: Size(double.infinity, 130),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.amber,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
                          radius: 50,
                        ),
                        Text('Your Story'),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.amber,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
                          radius: 50,
                        ),
                        Text('ravi'),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.amber,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
                          radius: 50,
                        ),
                        Text('hardik'),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.amber,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
                          radius: 50,
                        ),
                        Text('vishal'),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.amber,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
                          radius: 50,
                        ),
                        Text('jatin'),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.amber,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
                          radius: 50,
                        ),
                        Text('ajay'),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.amber,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
                          radius: 50,
                        ),
                        Text('kappu'),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.amber,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
                          radius: 50,
                        ),
                        Text('jemish'),
                      ],
                    ),
                  ],
                ),
              ),
            )),
        elevation: 25,
      ),
      body: Column(
        children: [
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
            ),
            title: Text('Mintan lathiya'),
            subtitle: Text('flutter '),
            trailing: Icon(Icons.more_vert),
          ),
          Container(
            height: 500,
            width: 500,
            //color: Colors.brown,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU'),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.home,
            size: 50,
          ),
          Icon(
            Icons.search,
            size: 50,
          ),
          Icon(
            Icons.add_box,
            size: 50,
          ),
          Icon(
            Icons.play_circle,
            size: 50,
          ),
          Icon(
            Icons.circle,
            color: Colors.pink,
            size: 50,
          ),
        ],
        
      ),
      
    );
  }
}
