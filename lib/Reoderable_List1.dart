import 'package:flutter/material.dart';

class ReoderableList1Page extends StatefulWidget {
  const ReoderableList1Page({Key? key}) : super(key: key);

  @override
  State<ReoderableList1Page> createState() => _ReoderableList1PageState();
}

class _ReoderableList1PageState extends State<ReoderableList1Page> {
  List data = [
    "Shreya",
    "Mansi",
    "Nikita",
    "Nimita",
    "Kinjal",
    "Dhruvi",
    "Krupa"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReorderableListView.builder(
          itemBuilder: (context, index) {
            return Container(
              key: UniqueKey(),
              height: 50,
              width: double.infinity,
              child: Text("Name :${data[index]}"),
            );
          },
          itemCount: data.length,
          onReorder: (oldIndex, newIndex) {
            setState(
              () {
                if (newIndex > oldIndex) {
                  newIndex -= 1;
                }
              },
            );
            var olditem = data.removeAt(oldIndex);
            data.insert(newIndex, olditem);
          },
        ),
      ),
    );
  }
}
