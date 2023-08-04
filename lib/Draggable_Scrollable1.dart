import 'package:flutter/material.dart';

class DraggableScrollable1Page extends StatefulWidget {
  const DraggableScrollable1Page({Key? key}) : super(key: key);

  @override
  State<DraggableScrollable1Page> createState() =>
      _DraggableScrollable1PageState();
}

class _DraggableScrollable1PageState extends State<DraggableScrollable1Page> {
  List data = [
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
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
              "https://images.unsplash.com/photo-1546514355-7fdc90ccbd03?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
          DraggableScrollableSheet(
            minChildSize: 0.1,
            maxChildSize: 0.9,
            snap: true,
            snapSizes: [0.3, 0.6],
            builder: (context, scrollController) {
              return ListView.builder(
                controller: scrollController,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    height: 40,
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.4),
                    ),
                    child: Center(
                      child: Text(
                        data[index],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
