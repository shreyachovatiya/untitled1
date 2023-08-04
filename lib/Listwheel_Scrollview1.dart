import 'package:flutter/material.dart';

class ListWheelScrollViewpage extends StatefulWidget {
  const ListWheelScrollViewpage({Key? key}) : super(key: key);

  @override
  State<ListWheelScrollViewpage> createState() =>
      _ListWheelScrollViewpageState();
}

class _ListWheelScrollViewpageState extends State<ListWheelScrollViewpage> {
  List name = [
    "Shreya",
    "Mansi",
    "Nikita",
    "Nimita",
    "Kinjal",
    "Dhruvi",
    "Krupa",
    "Khushi",
    "Janki",
    "Priya",
    "Pooja",
    "Princy"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListWheelScrollView(
        children: List.generate(
          name.length,
          (index) => Text("${name[index]}"),
        ),
        itemExtent: 50,
        diameterRatio: 0.8,
        magnification: 1,
        offAxisFraction: 0.6,
        perspective: 0.01,
        physics: BouncingScrollPhysics(),
        overAndUnderCenterOpacity: 0.3,
      ),
    );
  }
}
