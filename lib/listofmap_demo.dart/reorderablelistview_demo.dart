import 'package:flutter/material.dart';

class ReOrderableListViewDemo extends StatefulWidget {
  const ReOrderableListViewDemo({super.key});

  @override
  State<ReOrderableListViewDemo> createState() =>
      _ReOrderableListViewDemoState();
}

class _ReOrderableListViewDemoState extends State<ReOrderableListViewDemo> {
  final List<int> data = List.generate(30, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReorderableListView(
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }

            final int item = data.removeAt(oldIndex);
            data.removeAt(oldIndex);
            data.insert(newIndex, item);
          });
        },
        children: List.generate(
          data.length,
          (index) => ListTile(
            key: Key('$index'),
            tileColor: data[index].isOdd ? Colors.white12 : Colors.white30,
            title: Text('Item ${data[index]}'),
            trailing: const Icon(Icons.drag_handle_sharp),
          ),
        ),
      ),
    );
  }
}
