import 'package:flutter/material.dart';

class ListGenerate1 extends StatelessWidget {
  ListGenerate1({Key? key}) : super(key: key);

  List c = [
    Colors.orange,
    Colors.blueGrey,
    Colors.black,
    Colors.amber,
    Colors.green
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Row(
              children: List.generate(
                c.length,
                (index) => Container(
                  height: 150,
                  width: 100,
                  color: c[index],
                  margin: EdgeInsets.all(10),
                  child: Center(child: Text("hello")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
