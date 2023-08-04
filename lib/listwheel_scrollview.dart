import 'package:flutter/material.dart';

class ListWheelScrollViewDemo extends StatefulWidget {
  const ListWheelScrollViewDemo({Key? key}) : super(key: key);

  @override
  State<ListWheelScrollViewDemo> createState() =>
      _ListWheelScrollViewDemoState();
}

class _ListWheelScrollViewDemoState extends State<ListWheelScrollViewDemo> {
  List name = [
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
      body: ListWheelScrollView(
        children: List.generate(
          name.length,
          (index) => Text(
            "${name[index]}",
          ),
        ),
        itemExtent: 50,
        diameterRatio: 0.8,
        magnification: 1,
        perspective: 0.01,
        physics: BouncingScrollPhysics(),
        overAndUnderCenterOpacity: 0.2,
        // offAxisFraction: -1,
      ),
    );
  }
}
