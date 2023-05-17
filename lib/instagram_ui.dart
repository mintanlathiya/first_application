import 'package:flutter/material.dart';

class InstagramUiDemo extends StatelessWidget {
  const InstagramUiDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Expanded(
                child: Text(
                  'Instagram',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(
                Icons.favorite,
                size: 50,
                color: Colors.red,
              ),
              Icon(
                Icons.message_rounded,
                size: 50,
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Expanded(
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU')),
                            color: Colors.pink,
                            borderRadius:
                                BorderRadius.all(Radius.circular(200))),
                      ),
                      const Text(
                        'your stroy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU')),
                            border: Border.all(
                              color: Colors.red,
                              strokeAlign: 10,
                              width: 1,
                            ),
                            color: Colors.green,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(200))),
                      ),
                      const Text(
                        'ajay',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU')),
                            border: Border.all(
                              color: Colors.red,
                              strokeAlign: 10,
                              width: 1,
                            ),
                            color: Colors.red,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(200))),
                      ),
                      const Text(
                        'ravina',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU')),
                            border: Border.all(
                              color: Colors.red,
                              strokeAlign: 10,
                              width: 1,
                            ),
                            color: Colors.purple,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(200))),
                      ),
                      const Text(
                        'jemish',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU')),
                            border: Border.all(
                              color: Colors.red,
                              strokeAlign: 10,
                              width: 1,
                            ),
                            color: Colors.blue,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(200))),
                      ),
                      const Text(
                        'kappu',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU')),
                            border: Border.all(
                              color: Colors.red,
                              strokeAlign: 10,
                              width: 1,
                            ),
                            color: Colors.pink,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(200))),
                      ),
                      const Text(
                        'mintan',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU')),
                            border: Border.all(
                              color: Colors.red,
                              strokeAlign: 10,
                              width: 1,
                            ),
                            color: Colors.brown,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(200))),
                      ),
                      const Text(
                        'jatin',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10, left: 5),
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            color: Colors.pink,
                            borderRadius:
                                BorderRadius.all(Radius.circular(200))),
                      ),
                      const Expanded(
                        child: Text(
                          'shopping App',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.more_vert,
                        size: 50,
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 500,
                          width: 700,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://m.media-amazon.com/images/I/61qArRFsdiL._UY679_.jpg')),
                          ),
                        ),
                        Container(
                          height: 500,
                          width: 700,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://m.media-amazon.com/images/I/61qArRFsdiL._UY679_.jpg')),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 50,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.chat,
                        size: 50,
                      ),
                      Icon(
                        Icons.send,
                        size: 50,
                      ),
                      Expanded(
                        child: Icon(
                          Icons.more_horiz,
                          size: 50,
                        ),
                      ),
                      Icon(
                        Icons.bookmark,
                        size: 50,
                      ),
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Like by mintan and others'),
                      Text('price \$50'),
                      Text('View all 4 comments'),
                      Text(
                        '3 hours ago',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '  Suggested you',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '  see all  ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5),
                                height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU')),
                                    color: Colors.pink,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(200))),
                              ),
                              const Text(
                                'mintan',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Followed by jemish',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 25,
                                width: 120,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                ),
                                child: const Text(
                                  "Follow",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5),
                                height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU')),
                                    color: Colors.pink,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(200))),
                              ),
                              const Text(
                                'mintan',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Followed by jemish',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 25,
                                width: 120,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                ),
                                child: const Text(
                                  "Follow",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5),
                                height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU')),
                                    color: Colors.pink,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(200))),
                              ),
                              const Text(
                                'mintan',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Followed by jemish',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 25,
                                width: 120,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                ),
                                child: const Text(
                                  "Follow",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5),
                                height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU')),
                                    color: Colors.pink,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(200))),
                              ),
                              const Text(
                                'mintan',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Followed by jemish',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 25,
                                width: 120,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                ),
                                child: const Text(
                                  "Follow",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5),
                                height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU')),
                                    color: Colors.pink,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(200))),
                              ),
                              const Text(
                                'mintan',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Followed by jemish',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 25,
                                width: 120,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                ),
                                child: const Text(
                                  "Follow",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5),
                                height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU')),
                                    color: Colors.pink,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(200))),
                              ),
                              const Text(
                                'mintan',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Followed by jemish',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 25,
                                width: 120,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                ),
                                child: const Text(
                                  "Follow",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5),
                                height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU')),
                                    color: Colors.pink,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(200))),
                              ),
                              const Text(
                                'mintan',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Followed by jemish',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 25,
                                width: 120,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                ),
                                child: const Text(
                                  "Follow",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5),
                                height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx4Ej3sddJTqtqN48tLwfcukxY-e70Aev4Dw&usqp=CAU')),
                                    color: Colors.pink,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(200))),
                              ),
                              const Text(
                                'mintan',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Followed by jemish',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 25,
                                width: 120,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                ),
                                child: const Text(
                                  "Follow",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10, left: 5),
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            color: Colors.pink,
                            borderRadius:
                                BorderRadius.all(Radius.circular(200))),
                      ),
                      const Expanded(
                        child: Text(
                          'shopping App',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.more_vert,
                        size: 50,
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 500,
                          width: 700,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://m.media-amazon.com/images/I/81+O5exsulL._UY741_.jpg')),
                          ),
                        ),
                        Container(
                          height: 500,
                          width: 700,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://m.media-amazon.com/images/I/81+O5exsulL._UY741_.jpg')),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 50,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.chat,
                        size: 50,
                      ),
                      Icon(
                        Icons.send,
                        size: 50,
                      ),
                      Expanded(
                        child: Icon(
                          Icons.more_horiz,
                          size: 50,
                        ),
                      ),
                      Icon(
                        Icons.bookmark,
                        size: 50,
                      ),
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Like by ravi and others'),
                      Text('price \$50'),
                      Text('View all 12 comments'),
                      Text(
                        '12 hours ago',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10, left: 5),
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            color: Colors.pink,
                            borderRadius:
                                BorderRadius.all(Radius.circular(200))),
                      ),
                      const Expanded(
                        child: Text(
                          'shopping App',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.more_vert,
                        size: 50,
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 500,
                          width: 700,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://m.media-amazon.com/images/I/81PHDm4ZomS._UY741_.jpg')),
                          ),
                        ),
                        Container(
                          height: 500,
                          width: 700,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://m.media-amazon.com/images/I/81PHDm4ZomS._UY741_.jpg')),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 50,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.chat,
                        size: 50,
                      ),
                      Icon(
                        Icons.send,
                        size: 50,
                      ),
                      Expanded(
                        child: Icon(
                          Icons.more_horiz,
                          size: 50,
                        ),
                      ),
                      Icon(
                        Icons.bookmark,
                        size: 50,
                      ),
                    ],
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Like by pari and others'),
                      Text('price \$50'),
                      Text('View all 15 comments'),
                      Text(
                        '18 hours ago',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        ],
      ),
    );
  }
}
