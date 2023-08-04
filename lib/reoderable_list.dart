import 'package:flutter/material.dart';

class ReoderableListDemo extends StatefulWidget {
  const ReoderableListDemo({Key? key}) : super(key: key);

  @override
  State<ReoderableListDemo> createState() => _ReoderableListDemoState();
}

class _ReoderableListDemoState extends State<ReoderableListDemo> {
  List name = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ReorderableListView.builder(
        itemBuilder: (context, index) {
          return Container(
            key: UniqueKey(),
            height: 40,
            width: double.infinity,
            child: Center(
              child: Text(
                "Name : ${name[index]}",
              ),
            ),
          );
        },
        itemCount: name.length,
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
          });
          var olditem = name.removeAt(oldIndex);
          name.insert(newIndex, olditem);
        },
      ),
    ));
  }
}
