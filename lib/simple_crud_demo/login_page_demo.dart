import 'package:flutter/material.dart';

class LoginPageDemo extends StatefulWidget {
  const LoginPageDemo({super.key});

  @override
  State<LoginPageDemo> createState() => _LoginPageDemoState();
}

class _LoginPageDemoState extends State<LoginPageDemo> {
  final TextEditingController _txtUserNameEditingController =
      TextEditingController();
  final TextEditingController _txtPasswordEditingController =
      TextEditingController();

  String? userName, password;
  @override
  void dispose() {
    _txtUserNameEditingController.dispose();
    _txtPasswordEditingController.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();
  String? passwordError;
  bool _secureText = true;
  bool isselected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/34.jpeg'))),
            ),
            TextField(
              controller: _txtUserNameEditingController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all((Radius.circular(15))),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all((Radius.circular(15))),
                      borderSide: BorderSide(color: Colors.blueAccent)),
                  icon: Icon(
                    Icons.person,
                    color: Colors.blueAccent,
                  ),
                  hintText: 'Enter Name',
                  labelText: ' userName',
                  //errorText: 'Enter valid Text',
                  suffixIcon: Icon(
                    Icons.message,
                    color: Colors.blueAccent,
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _txtPasswordEditingController,
              obscureText: _secureText,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all((Radius.circular(15))),
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all((Radius.circular(15))),
                      borderSide: BorderSide(color: Colors.blue)),
                  icon: const Icon(
                    Icons.password,
                    color: Colors.blueAccent,
                  ),
                  hintText: 'Enter Password',
                  labelText: 'userpassword',
                  suffixIcon: IconButton(
                      onPressed: () {
                        _secureText = !_secureText;
                        setState(() {});
                      },
                      icon: Icon(_secureText
                          ? Icons.remove_red_eye
                          : Icons.security))),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (String? value) {
                      if (value!.length < 10) {
                        return 'Enter at least 10 char';
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all((Radius.circular(15))),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all((Radius.circular(15))),
                          borderSide: BorderSide(color: Colors.blue)),
                      icon: Icon(
                        Icons.person,
                        color: Colors.blueAccent,
                      ),
                      hintText: 'Enter Name',
                      labelText: 'userName',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (String? value) {
                      if (value!.length < 6) {
                        return 'Enter at least 6 char';
                      } else {
                        return null;
                      }
                    },
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all((Radius.circular(15))),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all((Radius.circular(15))),
                          borderSide: BorderSide(color: Colors.blue)),
                      icon: Icon(
                        Icons.password,
                        color: Colors.blueAccent,
                      ),
                      hintText: 'Enter Password',
                      labelText: 'userpassword',
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: isselected,
                  onChanged: (value) {
                    isselected = value!;
                    setState(() {});
                  },
                ),
                const SelectableText('I accept term and condition')
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: 200,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.blueAccent,
                    Colors.blueAccent,
                    Colors.lightBlue
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: MaterialButton(
                elevation: 10,
                onPressed: () {
                  userName = _txtUserNameEditingController.text;
                  password = _txtPasswordEditingController.text;
                  _formKey.currentState!.validate();
                  if (_txtPasswordEditingController.text.length < 6) {
                    passwordError = 'Enter at least 6 char';
                  } else {
                    passwordError = null;
                  }

                  setState(() {});
                },
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
            if (userName != null &&
                password != null &&
                userName != '' &&
                password != '' &&
                isselected == true)
              Text('userName:${userName!} \n  password:${password!}')
          ],
        ),
      ),
    );
  }
}
