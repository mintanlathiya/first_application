import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        // padding: const EdgeInsets.fromLTRB(70, 50, 35, 60),
        transform: Matrix4.rotationZ(0.1),
        transformAlignment: const Alignment(-8, 10),
        decoration: BoxDecoration(
            color: Colors.orange,
            boxShadow: const [
              BoxShadow(
                color: Colors.red,
                blurRadius: 50,
                spreadRadius: 20,
                //offset: Offset(10, 10),
              )
            ],
            // image: const DecorationImage(
            //   image: NetworkImage(
            //     'https://m.media-amazon.com/images/I/61qArRFsdiL._UY679_.jpg')),
            border: Border.all(
                color: Colors.blue,
                width: 1,
                // strokeAlign: 10,
                style: BorderStyle.solid),
            //borderRadius: const BorderRadius.all(Radius.circular(200)),
            //borderRadius: const BorderRadius.only(
            // topLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(200)),
            // borderRadius:
            // const BorderRadius.only(bottomRight: Radius.elliptical(100, 5)),
            //gradient: const LinearGradient(
            //colors: [Colors.red, Colors.green],
            //begin: Alignment.topLeft,
            // end: Alignment.bottomRight,
            //stops: [2, 1]
            //),
            gradient: const RadialGradient(
              colors: [
                Colors.red,
                Colors.orange,
                Colors.yellow,
                Colors.green,
                Colors.blue,
                Colors.indigo
              ],
              center: Alignment.bottomCenter,
              tileMode: TileMode.clamp,
            )),

        height: 300,
        width: 300,
        //color: Colors.amber,
        alignment: Alignment.center,
        child: const Text(
          'Mintan',
        ),
      ),
    );
  }
}
