import 'package:flutter/material.dart';

class TextFormFieldDemo extends StatefulWidget {
  const TextFormFieldDemo({super.key});

  @override
  State<TextFormFieldDemo> createState() => _TextFormFieldDemoState();
}

class _TextFormFieldDemoState extends State<TextFormFieldDemo> {
  final TextEditingController _txtUseNameEditingController =
      TextEditingController();
  final TextEditingController _txtSurNameEditingController =
      TextEditingController();
  final TextEditingController _txtMobileEditingController =
      TextEditingController();
  final TextEditingController _txtEmailIdEditingController =
      TextEditingController();
  final TextEditingController _txtAddressEditingController =
      TextEditingController();
  final TextEditingController _txtAgeEditingController =
      TextEditingController();

  final GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: key,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'UserName required';
                  } else if (value.length >= 20) {
                    return 'limit exceed';
                  } else {
                    return null;
                  }
                },
                controller: _txtUseNameEditingController,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'SurName required';
                  } else if (value.length >= 10) {
                    return 'limit exceed';
                  } else {
                    return null;
                  }
                },
                controller: _txtSurNameEditingController,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'mobile number required';
                  } else if (value.length > 10) {
                    return 'limit exceed';
                  } else {
                    return null;
                  }
                },
                controller: _txtMobileEditingController,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'email required';
                  } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$')
                      .hasMatch(value)) {
                    return 'invaild email';
                  } else {
                    return null;
                  }
                },
                controller: _txtEmailIdEditingController,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Address required';
                  } else {
                    return null;
                  }
                },
                controller: _txtAddressEditingController,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                validator: (value) {
                  try {
                    if (value!.isEmpty) {
                      return 'Age required';
                    }
                    if (int.parse(value) > 100) {
                      return 'valid age';
                    }
                    return null;
                  } catch (e) {
                    return 'enter valid age';
                  }
                },
                controller: _txtAgeEditingController,
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('form valid')));
                  }
                },
                child: const Text('submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
