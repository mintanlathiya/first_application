import 'package:flutter/material.dart';

class TextfieldDecorationDemo extends StatefulWidget {
  const TextfieldDecorationDemo({super.key});

  @override
  State<TextfieldDecorationDemo> createState() =>
      _TextfieldDecorationDemoState();
}

class _TextfieldDecorationDemoState extends State<TextfieldDecorationDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              cursorColor: Colors.red,
              //cursorHeight: 30,
              //cursorWidth: 10,
              //cursorOpacityAnimates: true,
              // maxLines: null,
              //maxLength: 10,
              //keyboardType: TextInputType.phone,
              //obscureText: true,
              //obscuringCharacter: '#',
              //enabled: false,
              //readOnly: true,
              //cursorRadius: Radius.circular(20),
              //minLines: 1,
              //textAlign: TextAlign.start,
              //textAlignVertical: TextAlignVertical.bottom,
              //textDirection: TextDirection.rtl,
              //textCapitalization: TextCapitalization.words,
              // autocorrect: false,
              // expands: true,
              //textInputAction: TextInputAction.continueAction,
              //inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              style: const TextStyle(color: Colors.red),
              decoration: InputDecoration(
                //border: InputBorder.none
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  gapPadding: 50,
                  borderSide:
                      const BorderSide(color: Colors.red, strokeAlign: 5),
                ),
                // focusedBorder: OutlineInputBorder(
                //     borderRadius: BorderRadius.circular(50),
                //     gapPadding: 50,
                //     borderSide: const BorderSide(color: Colors.orangeAccent)),
                // enabledBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(5),
                //   gapPadding: 50,
                //   borderSide: const BorderSide(color: Colors.pink),
                // ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  gapPadding: 50,
                  borderSide: const BorderSide(color: Colors.purple),
                ),

                // errorBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(5),
                //   gapPadding: 50,
                //   borderSide: const BorderSide(color: Colors.blueAccent),
                // ),
                // focusedErrorBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(5),
                //   gapPadding: 50,
                //   borderSide: const BorderSide(color: Colors.purple),
                // ),

                // helperText: 'character',

                //fillColor: Colors.amber,
                //filled: true,
                //suffix: const Text('data'),
                //suffixStyle: const TextStyle(color: Colors.purple),
                //suffixIcon: const Icon(Icons.message),
                //suffixText: 'suffix text',

                icon: const Icon(Icons.person),
                iconColor: Colors.amber,

                //hintStyle: const TextStyle(color: Colors.purple),
                // prefix: const Text('prifix'),
                //prefixIcon: const Icon(Icons.message_outlined),
                //prefixIconColor: Colors.red,
                //prefixStyle: const TextStyle(color: Colors.red),
                //prefixText: 'min',
                // contentPadding: const EdgeInsets.symmetric(horizontal: 50)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  gapPadding: 50,
                  borderSide:
                      const BorderSide(color: Colors.red, strokeAlign: 5),
                ),
                // label: const Text('Hello'),
                // labelStyle: const TextStyle(color: Colors.pinkAccent),
                //labelText: 'label Text',
                //focusColor: Colors.yellow,
                //filled: false,
                //fillColor: Colors.red,
                //errorText: 'error',
                //errorStyle: const TextStyle(color: Colors.purple, fontSize: 20),
                //errorMaxLines: 1,
                // enabled: false,
                //floatingLabelAlignment: FloatingLabelAlignment.start,
                //floatingLabelStyle: const TextStyle(color: Colors.brown),
                // helperMaxLines: 3,
                // helperStyle: const TextStyle(color: Colors.deepPurpleAccent),
                // helperText: 'helper text',
                // hintText: 'Enter your Name',
                // hintMaxLines: 2,
                // hintTextDirection: TextDirection.rtl,
                //hoverColor: Colors.grey,
                // isCollapsed: true,

                // alignLabelWithHint: false,

                // focusedBorder: OutlineInputBorder(
                //     borderRadius: BorderRadius.circular(50),
                //     gapPadding: 50,
                //     borderSide: const BorderSide(color: Colors.orangeAccent)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
