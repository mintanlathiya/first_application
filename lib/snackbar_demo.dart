import 'package:flutter/material.dart';

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            print('click me');
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('hello i am snackbar'),
                //showCloseIcon: true,
                //width: 5,
                // elevation: 20,
                //margin: EdgeInsets.all(20) ,
                //padding: EdgeInsets.all(50),
                // duration: Duration(seconds: 10),
                //dismissDirection: DismissDirection.up,
                //closeIconColor: Colors.red,
              ),
            );
          },
          child: const Text('snackbar'),
        ),
        
      ),
      
    );
  }
}
