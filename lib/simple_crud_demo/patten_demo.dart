import 'package:first_application/simple_crud_demo/patten_controller_demo.dart';
import 'package:flutter/material.dart';

class PattenDemo extends StatefulWidget {
  const PattenDemo({super.key});

  @override
  State<PattenDemo> createState() => _PattenDemoState();
}

class _PattenDemoState extends State<PattenDemo> {
  final TextEditingController _txtPattenEditingController =
      TextEditingController();
  @override
  void dispose() {
    _txtPattenEditingController.dispose();
    super.dispose();
  }

  String? displayPrint;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(controller: _txtPattenEditingController),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 480,
            color: Colors.white,
            child: SelectionArea(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    childAspectRatio: 5),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      displayPrint = PatternAllList.pattendata[index]
                              ['function'](
                          int.parse(_txtPattenEditingController.text));
                      setState(() {});
                    },
                    child: Container(
                      color: Colors.amber,
                      alignment: Alignment.center,
                      child: Text('patten ${index + 1}'),
                    ),
                  );
                },
                itemCount: PatternAllList.pattendata.length,
              ),
            ),
          ),
          if (displayPrint != null) SelectableText(displayPrint!),
        ],
      ),
    );
  }
}
